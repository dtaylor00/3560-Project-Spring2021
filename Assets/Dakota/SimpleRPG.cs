/*
 * File:		 SimpleRPG.cs
 * Author:		 Dakota Taylor
 * Created:		 03 March 2021
 * Modified:	 08 March 2021
 * Desc:		 A simple RPG using a projectile. Has a slow firerate, very small ammo clip, small amount of inaccuracy, and long distance.
 */


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleRPG : GunBase {
    [Tooltip("The bullet to be instantiated and fired")]
    [SerializeField] private BulletBase pfBullet;
    [Tooltip("The speed the bullet flies after being shot")]
    [SerializeField] private float bulletSpeed = 6.0f;

    public void Reset() {
        fireRate = 6f;
        maxAmmo = 1;
        inaccuracy = 0.05f;
        maxDistance = 40f;
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
        var offset = OffsetDirection();
        Vector3 pos = spawnTransform.position + offset;
        BulletBase bullet = Instantiate(pfBullet, pos, Quaternion.identity);

        var timeAlive = maxDistance / bulletSpeed;
        Ray ray = new Ray(spawnTransform.position, offset);
        Debug.DrawRay(ray.origin, ray.direction * maxDistance, Color.red, timeAlive);
        bullet.Initialize(offset * bulletSpeed, timeAlive);
    }
}
