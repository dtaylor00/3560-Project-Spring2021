/*
 * File:		 ProjectileGun.cs
 * Author:		 Dakota Taylor
 * Created:		 08 February 2021
 * Modified:	 11 February 2021
 * Desc:		 A sample gun script that fires a gameobject projectile using Unity's physics system. The bullet speed is variable and collision is handled in the bullet's script. Good for guns that doesn't fire often or has a special effect, like a rocket launcher.
 */

using UnityEngine;

public class ProjectileGun : BaseGun {
    [Tooltip("The bullet to be instantiated and fired")]
    [SerializeField] private GameObject pfBullet;
    [Tooltip("The speed the bullet flies after being shot")]
    [SerializeField] private float bulletSpeed = 10.0f;

    public override void Fire() {
        lastFired = Time.time;
        Vector3 pos = camTransform.position + camTransform.forward;
        GameObject bullet = Instantiate(pfBullet, pos, Quaternion.identity);
        bullet.GetComponent<BaseBullet>().Initialize(camTransform.forward * bulletSpeed);
    }

}
