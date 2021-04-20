/*
 * File:		 ProjectileGun.cs
 * Author:		 Dakota Taylor
 * Created:		 22 March 2021
 * Modified:	 23 March 2021
 * Desc:		 A gunbase that implements the firing mechanic with projectiles for bullets. The bullet can physically be seen flying and its collision is handled by the bullet's script.
 */

using System;
using UnityEngine;

public class ProjectileGun : GunBase {
    [Tooltip("The bullet to be instantiated and fired")]
    [SerializeField] private BulletBase pfBullet;

    public override void Fire() {
        base.Fire();
        int ammoSpent = Math.Min(currentAmmo, properties.ammoPerShot);
        int bulletsPerShot = (int)(ammoSpent * properties.bulletsPerAmmo);
        currentAmmo -= ammoSpent;

        var timeAlive = properties.maxDistance / properties.bulletSpeed;
        for (int i = 0; i < bulletsPerShot; i++) {
            var offset = OffsetDirection();
            var bullet = Instantiate(pfBullet, spawnTransform.position + offset, Quaternion.identity);
            bullet.Initialize(offset * properties.bulletSpeed, timeAlive);
        }
    }
}
