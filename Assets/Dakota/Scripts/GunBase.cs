/*
 * File:		 GunBase.cs
 * Author:		 Dakota Taylor
 * Created:		 08 February 2021
 * Modified:	 19 April 2021
 * Desc:		 An abstract script for a base gun. Handles and updates the state of the gun, which is used by the GunEventHandler to fire events. Inherited classes need to implement the firing mechanic and can add onto the events fired with AddEvents/RemoveEvents.
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public abstract class GunBase : MonoBehaviour, IGunState {
    // Gun parameters, these values mostly should be treated as if they were constants or readonly
    [Tooltip("The properties of the gun")]
    [SerializeField] protected GunData gunData;
    [Tooltip("Transform used to spawn the bullet")]
    [SerializeField] protected Transform spawnTransform;

    protected IGunEvents eventHandler;
    protected Dictionary<UnityEvent, UnityAction> eventMap = new Dictionary<UnityEvent, UnityAction>();

    public GunViewModel ViewModel => gunData.viewModel;
    public GunProperties Properties => gunData.properties;
    public GunEffect Effects => gunData.effects;

    // various variables need to get and keep track of gun state
    public event Action<IGunState> OnStateChanged = delegate { };

    private bool _isFiring, _isReloading, _isAiming;
    public bool IsFiring {
        get => _isFiring; protected set {
            _isFiring = value;
            OnStateChanged?.Invoke(this);
        }
    }
    public bool IsReloading {
        get => _isReloading; protected set {
            _isReloading = value;
            OnStateChanged?.Invoke(this);
        }
    }
    public bool IsAiming {
        get => _isAiming; protected set {
            _isAiming = value;
            OnStateChanged?.Invoke(this);
        }
    }

    private int _currentAmmo;
    public int CurrentAmmo { // NOTE: might move currentAmmo into IGunState
        get => _currentAmmo; protected set {
            if (value <= 0) IsFiring = false;
            _currentAmmo = value;
        }
    }

    protected float lastFired;
    protected float currentInaccuracy;
    protected int currentShots;

    // Must do three things in addition to changing the event handler:
    // Remove event listeners from the current event handler
    // Clear the current event mapping and create a new event mapping
    // Add those new event listenrs to the new event handler
    public void SetEventHandler(IGunEvents eventHandler) {
        if (this.eventHandler == eventHandler) return;

        bool activeState = gameObject.activeSelf; // Keeps the current state to retract to later
        gameObject.SetActive(false);              // Might not even be necessary but just to be safe
        eventMap.Clear();
        this.eventHandler = eventHandler;
        CreateEventMap();
        gameObject.SetActive(activeState);
    }

    public void Initialize(GunData data, Transform transform, IGunEvents eventHandler) {
        this.gunData = data;
        this.spawnTransform = transform;
        SetEventHandler(eventHandler);
    }

    public void Awake() {
        spawnTransform ??= this.GetComponentInChildren<Camera>().transform;
        SetEventHandler(eventHandler ?? GunEventsDummy.Instance);

        lastFired = -Properties.fireRate; // negative fireRate so we can fire as soon as the game starts
        currentInaccuracy = Properties.inaccuracy;
        CurrentAmmo = Properties.maxAmmo;
        currentShots = Properties.shotsPerTrigger;
    }

    public void OnEnable() {
        AddEventListeners();
    }

    public void OnDisable() {
        RemoveEventListeners();
        IsAiming = false;
        IsReloading = false;
        IsFiring = false;
    }

    public virtual bool CanFire() {
        return Time.time - lastFired > Properties.fireRate
                && CurrentAmmo > 0
                && !IsReloading;
    }

    public virtual void Fire() {
        lastFired = Time.time;
    }

    public virtual bool CanReload() {
        return !IsReloading && CurrentAmmo < Properties.maxAmmo;
    }

    public virtual void Reload() {
        if (CanReload()) {
            IsReloading = true;
            eventHandler.OnReload?.Invoke();
            StartCoroutine(ReloadCoroutine());
        }
    }

    private IEnumerator ReloadCoroutine() {
        yield return new WaitForSeconds(Properties.reloadTime);
        CurrentAmmo = Properties.maxAmmo;
        IsReloading = false;
        eventHandler.OnReloadEnd?.Invoke();
    }

    public virtual bool CanAim() {
        return true;
    }

    public virtual bool CanSwitch() {
        return !IsReloading && !IsAiming;
    }

    protected virtual void AddAction(UnityEvent evt, UnityAction act) {
        if (!eventMap.ContainsKey(evt)) eventMap.Add(evt, act);
        else eventMap[evt] += act;
    }

    protected virtual void CreateEventMap() {
        Debug.Log("Creating action map");
        AddAction(eventHandler.OnFire, () => Fire());
        AddAction(eventHandler.OnFireStart, () => IsFiring = CurrentAmmo > 0 || IsFiring);
        AddAction(eventHandler.OnFireEnd, () => IsFiring = false);

        AddAction(eventHandler.OnReloadStart, () => Reload());

        AddAction(eventHandler.OnAimStart, () => {
            IsAiming = true;
            currentInaccuracy = Properties.inaccuracy / 3.0f;
        });
        AddAction(eventHandler.OnAimEnd, () => {
            IsAiming = false;
            currentInaccuracy = Properties.inaccuracy;
        });
    }

    protected virtual void AddEventListeners() {
        foreach (var pair in eventMap) {
            UnityEvent evt = pair.Key;
            UnityAction act = pair.Value;
            evt.AddListener(act);
        }
    }

    protected virtual void RemoveEventListeners() {
        foreach (var pair in eventMap) {
            UnityEvent evt = pair.Key;
            UnityAction act = pair.Value;
            if (act != null) evt.RemoveListener(act);
        }
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
