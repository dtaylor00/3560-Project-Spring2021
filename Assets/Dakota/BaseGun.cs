/*
 * File:		 BaseGun.cs
 * Author:		 Dakota Taylor
 * Created:		 08 February 2021
 * Modified:	 23 February 2021
 * Desc:		 An abstract script for managing the player's gun. By default, the script manages input, updating, reloading, and ammo. Inherited script should implement what happens upon firing the gun. 
 */

using System.Collections;
using UnityEngine;

public abstract class BaseGun : MonoBehaviour {

    // the stats of the gun, these values mostly should be treated as if they were constants or readonly
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

    // various variables need to keep track of gun state
    protected float lastFired = 0f;
    protected bool isFiring = false;
    protected bool isReloading = false;
    protected bool isAiming = false;
    protected int currentAmmo;
    protected float currentInaccuracy;

    // for detecting input
    protected MasterInput inputController;

    // transform of the camera, its position is used spawn bullets
    protected Transform camTransform;

    public virtual void Awake() {
        inputController = new MasterInput(); // needs to be in Awake because OnEnable occurs before Start
    }
    public virtual void Start() {
        camTransform = gameObject.GetComponentInChildren<Camera>().transform;
        currentAmmo = maxAmmo;
        currentInaccuracy = inaccuracy;
    }

    public virtual void OnEnable() {
        inputController.Enable();

        inputController.Player.Fire.performed += _ => isFiring = true;
        inputController.Player.Fire.canceled += _ => isFiring = false;

        inputController.Player.Aim.performed += _ => isAiming = true;
        inputController.Player.Aim.canceled += _ => isAiming = false;

        inputController.Player.Reload.performed += _ => {
            if (!isReloading) StartCoroutine(Reload());
        };
    }

    public virtual void OnDisable() {
        inputController.Disable();

        inputController.Player.Fire.performed -= _ => isFiring = true;
        inputController.Player.Fire.canceled -= _ => isFiring = false;

        inputController.Player.Aim.performed -= _ => isAiming = true;
        inputController.Player.Aim.canceled -= _ => isAiming = false;

        inputController.Player.Reload.performed -= _ => {
            if (!isReloading) StartCoroutine(Reload());
        };
    }

    public virtual void Update() {
        if (isFiring && CanShoot()) {
            Fire();
            currentAmmo--;
            Debug.Log("currentAmmo: " + currentAmmo);
        }

        currentInaccuracy = isAiming ? inaccuracy / 3.0f : inaccuracy;
    }

    public virtual bool CanShoot() {
        return Time.time - lastFired > fireRate
            && currentAmmo > 0
            && !isReloading;
    }

    public virtual void Fire() {
        lastFired = Time.time;
    }

    public virtual IEnumerator Reload() {
        isReloading = true;
        Debug.Log("start reload");
        yield return new WaitForSeconds(reloadTime);
        currentAmmo = maxAmmo;
        Debug.Log("end reload");
        isReloading = false;
    }

    // Creates a directional vector from the cam and modify its end point to a random location up to currentInaccuracy away.
    public virtual Vector3 OffsetDirection() {
        return OffsetDirection(camTransform, currentInaccuracy);
    }

    // Creates a directional vector from the start but with an end up to maxOffset away.
    public static Vector3 OffsetDirection(Transform start, float maxOffset) {
        var vx = Random.Range(-maxOffset, maxOffset);
        var vy = Random.Range(-maxOffset, maxOffset);
        var vz = 1.0f;
        return start.TransformDirection(new Vector3(vx, vy, vz));
    }
}