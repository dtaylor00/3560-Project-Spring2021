/*
 * File:		 GunProperties.cs
 * Author:		 Dakota Taylor
 * Created:		 20 March 2021
 * Modified:	 23 March 2021
 * Desc:		 A scriptable object that contains the properties of a gun.
 */

using UnityEngine;

[CreateAssetMenu(fileName = "New Gun Properties", menuName = "ScriptableObjects/Gun Properties")]
public class GunProperties : ScriptableObject {
    [Tooltip("The firing type of the gun")]
    public GunType type = GunType.Raycast;
    [Tooltip("How much damage each bullet does")]
    public float damage = 1f;
    [Tooltip("The time (in seconds) before the gun can shoot again")]
    public float fireRate = 0.25f;
    [Tooltip("The amount of ammo the player can hold")]
    public int maxAmmo = 30;
    [Tooltip("The time (in seconds) required to reload the gun")]
    public float reloadTime = 2f;
    [Tooltip("The maximum distance the bullet flies")]
    public float maxDistance = 30f;
    [Tooltip("Inaccuracy range when firing gun")]
    public float inaccuracy = 0.05f;
    [Tooltip("The speed the bullet flies after being shot (for projectile-based guns)")]
    public float bulletSpeed = 1f;
    [Tooltip("How much ammo is spent per shot (More bullets will NOT fire, use bulletsPerAmmo for that)")]
    public int ammoPerShot = 1;
    [Tooltip("How many bullets flies per ammo used. Total bullets fired = ammo spent * bulletsPerAmmo (rounds down for fractional numbers)")]
    public float bulletsPerAmmo = 1;

    public enum GunType {
        Raycast = 0,
        Projectile = 1
    }
}
