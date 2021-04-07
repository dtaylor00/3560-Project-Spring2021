/*
 * File:		 GunAnimationController.cs
 * Author:		 Dakota Taylor
 * Created:		 05 April 2021
 * Modified:	 06 April 2021
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

    public GunAnimationController() {
        CreateActions();
    }

    private void CreateActions() {
        UpdateAnimator = state => {
            animator.SetBool("IsFiring", state.IsFiring);
            animator.SetBool("IsReloading", state.IsReloading);
        };
    }

    public void AddStateChanges(IGunState state) {
        state.OnStateChanged += UpdateAnimator;
    }

    public void RemoveStateChanges(IGunState state) {
        state.OnStateChanged -= UpdateAnimator;
    }

}
