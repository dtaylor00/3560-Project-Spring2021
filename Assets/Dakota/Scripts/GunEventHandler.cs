/*
 * File:		 GunEventHandler.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 06 April 2021
 * Desc:		 A class that uses player input and a gun's state to fire related events. Be sure to set the gun state using SetStateController.
 */

using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class GunEventHandler : MonoBehaviour, IGunEvents {
    // for detecting input
    protected MasterInput inputController;

    // the gun's state that this class is handling
    private IGunState state;

    // events
    [SerializeField]
    private UnityEvent _OnFire, _OnFireStart, _OnFireEnd;
    public UnityEvent OnFire { get => _OnFire; private set => _OnFire = value; }
    public UnityEvent OnFireStart { get => _OnFireStart; private set => _OnFireStart = value; }
    public UnityEvent OnFireEnd { get => _OnFireEnd; private set => _OnFireEnd = value; }

    [SerializeField]
    private UnityEvent _OnReload, _OnReloadStart, _OnReloadEnd;
    public UnityEvent OnReload { get => _OnReload; private set => _OnReload = value; }
    public UnityEvent OnReloadStart { get => _OnReloadStart; private set => _OnReloadStart = value; }
    public UnityEvent OnReloadEnd { get => _OnReloadEnd; private set => _OnReloadEnd = value; }

    [SerializeField]
    private UnityEvent _OnAim, _OnAimStart, _OnAimEnd;
    public UnityEvent OnAim { get => _OnAim; private set => _OnAim = value; }
    public UnityEvent OnAimStart { get => _OnAimStart; private set => _OnAimStart = value; }
    public UnityEvent OnAimEnd { get => _OnAimEnd; private set => _OnAimEnd = value; }

    public void SetStateController(IGunState state) {
        this.state = state;
    }

    public void Awake() {
        inputController = new MasterInput();
        state ??= GunStateDummy.Instance;
    }

    public void OnEnable() {
        inputController.Enable();
        AddInput();
    }

    public void OnDisable() {
        inputController.Disable();
        RemoveInput();
    }

    public void Update() {
        if (state.IsFiring && state.CanFire())
            OnFire?.Invoke();

        // if (state.IsReloading && state.CanReload()) // Never would execute normally
        //     OnReload?.Invoke();

        if (state.IsAiming && state.CanAim())
            OnAim?.Invoke();
    }

    protected void AddInput() {
        inputController.Player.Fire.performed += _ => OnFireStart?.Invoke();
        inputController.Player.Fire.canceled += _ => OnFireEnd?.Invoke();

        inputController.Player.Reload.performed += _ => OnReloadStart?.Invoke();
        // inputController.Player.Reload.canceled += _ => OnReloadEnd?.Invoke();

        inputController.Player.Aim.performed += _ => OnAimStart?.Invoke();
        inputController.Player.Aim.canceled += _ => OnAimEnd?.Invoke();
    }

    protected void RemoveInput() {
        inputController.Player.Fire.performed -= _ => OnFireStart?.Invoke();
        inputController.Player.Fire.canceled -= _ => OnFireEnd?.Invoke();

        inputController.Player.Reload.performed -= _ => OnReloadStart?.Invoke();
        // inputController.Player.Reload.canceled -= _ => OnReloadEnd?.Invoke();

        inputController.Player.Aim.performed -= _ => OnAimStart?.Invoke();
        inputController.Player.Aim.canceled -= _ => OnAimEnd?.Invoke();
    }
}
