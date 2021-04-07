/*
 * File:		 IGunEvents.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 06 April 2021
 * Desc:		 An interface that defines a gun's events.
 */

using UnityEngine.Events;

public interface IGunEvents {
    UnityEvent OnFire { get; }
    UnityEvent OnFireStart { get; }
    UnityEvent OnFireEnd { get; }

    UnityEvent OnReload { get; }
    UnityEvent OnReloadStart { get; }
    UnityEvent OnReloadEnd { get; }

    UnityEvent OnAim { get; }
    UnityEvent OnAimStart { get; }
    UnityEvent OnAimEnd { get; }
}

public class GunEventsDummy : IGunEvents {
    private static GunEventsDummy _instance;
    public static GunEventsDummy Instance => _instance ??= new GunEventsDummy();

    private GunEventsDummy() { }
    public UnityEvent OnFire { get; } = new UnityEvent();
    public UnityEvent OnFireStart { get; } = new UnityEvent();
    public UnityEvent OnFireEnd { get; } = new UnityEvent();

    public UnityEvent OnReload { get; } = new UnityEvent();
    public UnityEvent OnReloadStart { get; } = new UnityEvent();
    public UnityEvent OnReloadEnd { get; } = new UnityEvent();

    public UnityEvent OnAim { get; } = new UnityEvent();
    public UnityEvent OnAimStart { get; } = new UnityEvent();
    public UnityEvent OnAimEnd { get; } = new UnityEvent();
}
