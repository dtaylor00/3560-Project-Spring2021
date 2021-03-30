/*
 * File:		 GunEventHandler.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 11 March 2021
 * Desc:		 A class that uses player input and a gun's state to fire related events. Be sure to set the gun state using SetStateController
 */

using System;
using System.Collections;
using UnityEngine;

[Serializable]
public class GunEventHandler : MonoBehaviour, IGunEvents {
    // for detecting input
    protected MasterInput inputController;

    // the gun's state that this class is handling
    private IGunState state;

    // events
    public event Action OnFire;
    public event Action OnFireStart;
    public event Action OnFireEnd;

    public event Action OnReload;
    public event Action OnReloadStart;
    public event Action OnReloadEnd;

    public event Action OnAim;
    public event Action OnAimStart;
    public event Action OnAimEnd;


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

        if (state.IsReloading && state.CanReload())
            OnReload?.Invoke();

        if (state.IsAiming && state.CanAim())
            OnAim?.Invoke();
    }

    protected void AddInput() {
        inputController.Player.Fire.performed += _ => OnFireStart?.Invoke();
        inputController.Player.Fire.canceled += _ => OnFireEnd?.Invoke();

        inputController.Player.Reload.performed += _ => OnReloadStart?.Invoke();
        inputController.Player.Reload.canceled += _ => OnReloadEnd?.Invoke();

        inputController.Player.Aim.performed += _ => OnAimStart?.Invoke();
        inputController.Player.Aim.canceled += _ => OnAimEnd?.Invoke();
    }

    protected void RemoveInput() {
        inputController.Player.Fire.performed -= _ => OnFireStart?.Invoke();
        inputController.Player.Fire.canceled -= _ => OnFireEnd?.Invoke();

        inputController.Player.Reload.performed += _ => OnReloadStart?.Invoke();
        inputController.Player.Reload.canceled += _ => OnReloadEnd?.Invoke();

        inputController.Player.Aim.performed -= _ => OnAimStart?.Invoke();
        inputController.Player.Aim.canceled -= _ => OnAimEnd?.Invoke();
    }
}
