/*
 * File:		 SimpleMachinegun.cs
 * Author:		 Dakota Taylor
 * Created:		 15 February 2021
 * Modified:	 23 February 2021
 * Desc:		 A simple machinegun using a raycast. Has a high firerate, decent ammo clip, fair bit of inaccuracy, and decent distance.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleMachinegun : BaseGun {

    public void Reset() {
        fireRate = 0.05f;
        maxAmmo = 60;
        inaccuracy = 0.05f;
        maxDistance = 60f;
    }

    public override void Fire() {
        base.Fire();
        Ray ray = new Ray(camTransform.position, OffsetDirection());
        Debug.DrawRay(ray.origin, ray.direction * maxDistance, Color.red, 5);

        // Physics.Raycast(ray, out RaycastHit rayhit);
        Physics.Raycast(ray, out RaycastHit rayhit, maxDistance);
        if (rayhit.collider != null) {
            Debug.Log("raycast hit!");
        }
    }
}