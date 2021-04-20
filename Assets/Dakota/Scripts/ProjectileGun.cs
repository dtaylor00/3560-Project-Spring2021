/*
 * File:		 ProjectileGun.cs
 * Author:		 Dakota Taylor
 * Created:		 22 March 2021
 * Modified:	 18 April 2021
 * Desc:		 A gunbase that implements the firing mechanic with projectiles for bullets. The bullet can physically be seen flying and its collision is handled by the bullet's script.
 */

using System;
using UnityEngine;

public class ProjectileGun : GunBase {
    public override void Fire() {
        base.Fire();
        int ammoSpent = Math.Min(CurrentAmmo, Properties.ammoPerShot);
        int bulletsPerShot = (int)(ammoSpent * Properties.bulletsPerAmmo);
        CurrentAmmo -= ammoSpent;

        var timeAlive = Properties.maxDistance / Properties.bulletSpeed;
        for (int i = 0; i < bulletsPerShot; i++) {
            var offset = OffsetDirection();
            var bullet = Instantiate(Properties.bullet, spawnTransform.position + offset, Quaternion.identity);
            bullet.Initialize(offset * Properties.bulletSpeed, timeAlive, -Properties.damage);
        }
    }
}
