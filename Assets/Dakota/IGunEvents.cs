/*
 * File:		 IGunEvents.cs
 * Author:		 Dakota Taylor
 * Created:		 02 March 2021
 * Modified:	 08 March 2021
 * Desc:		 An interface that defines gun's events.
 */

using System;

public interface IGunEvents {
    event Action OnFire;
    event Action OnFireStart;
    event Action OnFireEnd;

    event Action OnReload;
    event Action OnReloadStart;
    event Action OnReloadEnd;

    event Action OnAim;
    event Action OnAimStart;
    event Action OnAimEnd;
}
