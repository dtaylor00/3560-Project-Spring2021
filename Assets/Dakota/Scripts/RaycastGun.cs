/*
 * File:		 RaycastGun.cs
 * Author:		 Dakota Taylor
 * Created:		 20 March 2021
 * Modified:	 15 April 2021
 * Desc:		 A gunbase that implements the firing mechanic with raycasts for bullets. The bullet is instant and collision is handled upon fire; is either a hit or miss, no dodging.
 */

using System;
using UnityEngine;

public class RaycastGun : GunBase {
    public override void Fire() {
        base.Fire();
        int ammoSpent = Math.Min(CurrentAmmo, Properties.ammoPerShot);
        int bulletsPerShot = (int)(ammoSpent * Properties.bulletsPerAmmo);
        CurrentAmmo -= ammoSpent;

        for (int i = 0; i < bulletsPerShot; i++) {
            var bullet = new Ray(spawnTransform.position, OffsetDirection(spawnTransform, Properties.inaccuracy));
            Debug.DrawRay(bullet.origin, bullet.direction * Properties.maxDistance, Color.red, 5);

            Physics.Raycast(bullet, out RaycastHit rayhit, Properties.maxDistance);
            if (rayhit.collider != null && rayhit.collider.tag != "Bullet") {
                var healthScript = rayhit.collider.gameObject.GetComponent<Health>();
                Debug.Log("hit: " + healthScript + " doing " + (int)-Properties.damage + " damage");
                healthScript?.ModifyHealth((int)-Properties.damage);
            }
        }
    }
}
