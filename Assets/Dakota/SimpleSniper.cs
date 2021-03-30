/*
 * File:		 SimpleSniper.cs
 * Author:		 Dakota Taylor
 * Created:		 15 February 2021
 * Modified:	 03 March 2021
 * Desc:		 A simple sniper using a raycast. Has a low firerate, small ammo clip, very little inaccuracy, and long distance. 
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleSniper : GunBase {
    public void Reset() {
        fireRate = 2.5f;
        maxAmmo = 12;
        inaccuracy = 0.001f;
        maxDistance = 200f;
    }

    protected override void AddEvents() {
        base.AddEvents();
        eventHandler.OnFire += () => Fire();
    }

    protected override void RemoveEvents() {
        base.RemoveEvents();
        eventHandler.OnFire -= () => Fire();
    }

    private void Fire() {
        Ray ray = new Ray(spawnTransform.position, OffsetDirection());
        Debug.DrawRay(ray.origin, ray.direction * maxDistance, Color.red, 5);

        Physics.Raycast(ray, out RaycastHit rayhit, maxDistance);

        if (rayhit.collider != null) {
            Debug.Log("raycast hit!");
        }
    }
}
