/*
 * File:		 IGunState.cs
 * Author:		 Dakota Taylor
 * Created:		 03 March 2021
 * Modified:	 06 April 2021
 * Desc:		 An interface that defines a gun's state.
 */

using System;

public interface IGunState {
    bool IsFiring { get; }
    bool IsReloading { get; }
    bool IsAiming { get; }

    bool CanFire();
    bool CanReload();
    bool CanAim();
    bool CanSwitch();

    event Action<IGunState> OnStateChanged;
}

public class GunStateDummy : IGunState {
    private static GunStateDummy _instance;
    public static GunStateDummy Instance => _instance ??= new GunStateDummy();

    private GunStateDummy() { }
    public bool IsFiring => false;
    public bool IsReloading => false;
    public bool IsAiming => false;
    public bool CanAim() => false;
    public bool CanFire() => false;
    public bool CanReload() => false;
    public bool CanSwitch() => false;
    public event Action<IGunState> OnStateChanged = delegate { };
}