/*
 * File:		 IGunEvents.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 22 March 2021
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
