/*
 * File:		 BurstGun.cs
 * Author:		 Dakota Taylor
 * Created:		 23 March 2021
 * Modified:	 23 March 2021
 * Desc:		 An extension to the raycast gun that specifically handles guns that shoots multiple times per trigger.
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BurstGun : RaycastGun {
    private bool isBursting = false;

    public override bool CanFire() {
        return base.CanFire()
            && currentShots > 0
            && !isBursting;
    }

    public override void Fire() {
        base.Fire();
        StartCoroutine(FireCouroutine());
    }

    public virtual IEnumerator FireCouroutine() {
        currentShots--;
        isBursting = currentShots > 0 && currentAmmo > 0;
        if (isBursting) {
            yield return new WaitForSeconds(properties.shotRate);
            eventHandler.OnFire?.Invoke();
        } else {
            currentShots = properties.shotsPerTrigger;
        }
    }

    public override bool CanReload() {
        return base.CanReload() && !isBursting;
    }
}
