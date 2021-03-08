/*
 * File:		 GunEventHandler.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 08 March 2021
 * Desc:		 A class that uses player input and a gun's state to fire related events. Update, Enable, and Disable will need to be called manually in another class.
 */

using System;
using System.Collections;
using UnityEngine;

public class GunEventHandler : IGunEvents {
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

    public GunEventHandler(IGunState state) {
        this.state = state;
        inputController = new MasterInput();
    }

    public void Awake() {
        inputController = new MasterInput();
    }

    public void Enable() {
        inputController.Enable();
        AddInput();
    }

    public void Disable() {
        inputController.Disable();
        RemoveInput();
    }

    public void FireEvents() {
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
