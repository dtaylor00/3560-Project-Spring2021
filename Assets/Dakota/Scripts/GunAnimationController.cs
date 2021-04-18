/*
 * File:		 GunAnimationController.cs
 * Author:		 Dakota Taylor
 * Created:		 05 April 2021
 * Modified:	 18 April 2021
 * Desc:		 A class that updates the animator when the gun state changes.
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[Serializable]
public class GunAnimationController {
    public Animator animator;
    public Action<IGunState> UpdateAnimator;
    public UnityAction FireTrigger;

    public GunAnimationController() {
        CreateActions();
    }

    private void CreateActions() {
        UpdateAnimator = state => {
            animator.SetBool("IsFiring", state.IsFiring); // NOTE: May not be need anymore with the event handler
            animator.SetBool("IsReloading", state.IsReloading);
        };

        FireTrigger = () => animator.SetTrigger("Fire");
    }

    public void AddStateChanges(IGunState state) {
        state.OnStateChanged += UpdateAnimator;
    }

    public void RemoveStateChanges(IGunState state) {
        state.OnStateChanged -= UpdateAnimator;
    }

    public void AddGunEvents(IGunEvents events) {
        events.OnFire.AddListener(FireTrigger);
    }

    public void RemoveGunEvents(IGunEvents events) {
        events.OnFire.RemoveListener(FireTrigger);
    }
}
