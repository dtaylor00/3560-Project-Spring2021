/*
 * File:		 GunBase.cs
 * Author:		 Dakota Taylor
 * Created:		 08 February 2021
 * Modified:	 22 March 2021
 * Desc:		 An abstract script for a base gun. Handles and updates the state of the gun, which is used by the GunEventHandler to fire events. Inherited classes need to implement the firing mechanic and can add onto the events fired with AddEvents/RemoveEvents.
 */

using System.Collections;
using UnityEngine;

public abstract class GunBase : MonoBehaviour, IGunState {
    // Gun parameters, these values mostly should be treated as if they were constants or readonly
    [Tooltip("The time (in seconds) before the gun can shoot again")]
    [SerializeField] protected float fireRate = 0.5f;
    [Tooltip("The amount of ammo the player can hold")]
    [SerializeField] protected int maxAmmo = 30;
    [Tooltip("The time (in seconds) required to reload the gun")]
    [SerializeField] protected float reloadTime = 2f;
    [Tooltip("Inaccuracy when firing gun")]
    [SerializeField] protected float inaccuracy = 0.05f; // The bigger the number, the larger the offset
    [Tooltip("The maximum distance the bullet flies")]
    [SerializeField] protected float maxDistance = 30f;
    [Tooltip("Transform used to spawn the bullet")]
    [SerializeField] protected Transform spawnTransform;
    [Tooltip("The event handler fires events based on this gun's state and player's input")]
    [SerializeField] protected GunEventHandler eventHandler;
    [Tooltip("particle system that does tracers")]
    [SerializeField] protected ParticleSystem tracers;

    // various variables need to get and keep track of gun state
    public bool IsFiring { get; protected set; }
    public bool IsReloading { get; protected set; }
    public bool IsAiming { get; protected set; }

    protected float lastFired;
    protected int currentAmmo;
    protected float currentInaccuracy;

    public void Awake() {
        if (spawnTransform == null)
            spawnTransform = this.GetComponentInChildren<Camera>().transform;

        eventHandler.SetStateController(this);

        lastFired = -fireRate; // negative fireRate so we can fire as soon as the game starts
        currentInaccuracy = inaccuracy;
        currentAmmo = maxAmmo;
    }

    public void OnEnable() {
        AddEvents();
    }

    public void OnDisable() {
        RemoveEvents();
    }

    public virtual bool CanFire() {
        return Time.time - lastFired > fireRate
                && currentAmmo > 0
                && !IsReloading;
    }

    public virtual void Fire() {
        tracers?.Emit(1);
        lastFired = Time.time;
        currentAmmo--;
    }

    public virtual bool CanReload() {
        return !IsReloading && currentAmmo < maxAmmo;
    }

    public virtual void Reload() {
        if (CanReload()) {
            IsReloading = true;
            eventHandler.OnReload?.Invoke();
            StartCoroutine(ReloadCoroutine());
        }
    }

    private IEnumerator ReloadCoroutine() {
        yield return new WaitForSeconds(reloadTime);
        currentAmmo = maxAmmo;
        IsReloading = false;
        eventHandler.OnReloadEnd?.Invoke();
    }

    public virtual bool CanAim() {
        return true;
    }

    protected virtual void AddEvents() {
        eventHandler.OnFire.AddListener(() => Fire());
        eventHandler.OnFireStart.AddListener(() => IsFiring = true);
        eventHandler.OnFireEnd.AddListener(() => IsFiring = false);

        eventHandler.OnReloadStart.AddListener(() => Reload());

        eventHandler.OnAimStart.AddListener(() => {
            IsAiming = true;
            currentInaccuracy = inaccuracy / 3.0f;
        });
        eventHandler.OnAimEnd.AddListener(() => {
            IsAiming = false;
            currentInaccuracy = inaccuracy;
        });
    }

    protected virtual void RemoveEvents() {
        eventHandler.OnFire.RemoveListener(() => Fire());
        eventHandler.OnFireStart.RemoveListener(() => IsFiring = true);
        eventHandler.OnFireEnd.RemoveListener(() => IsFiring = false);

        eventHandler.OnReloadStart.RemoveListener(() => Reload());

        eventHandler.OnAimStart.RemoveListener(() => {
            IsAiming = true;
            currentInaccuracy = inaccuracy / 3.0f;
        });
        eventHandler.OnAimEnd.RemoveListener(() => {
            IsAiming = false;
            currentInaccuracy = inaccuracy;
        });
    }

    // Creates a directional vector from the cam and modify its end point to a random location up to currentInaccuracy away.
    protected virtual Vector3 OffsetDirection() {
        return OffsetDirection(spawnTransform, currentInaccuracy);
    }

    // Creates a directional vector from the start but with an end up to maxOffset away.
    public static Vector3 OffsetDirection(Transform start, float maxOffset) {
        var vx = UnityEngine.Random.Range(-maxOffset, maxOffset);
        var vy = UnityEngine.Random.Range(-maxOffset, maxOffset);
        var vz = 1.0f;
        return start.TransformDirection(new Vector3(vx, vy, vz));
    }
}
