/*
 * File:		 GunData.cs
 * Author:		 Dakota Taylor
 * Created:		 05 April 2021
 * Modified:	 18 April 2021
 * Desc:		 A scriptable object that contains the data of a gun, including its properties and model.
 */

using System;
using UnityEngine;

[CreateAssetMenu(fileName = "New Gun Data", menuName = "ScriptableObjects/Gun Data")]
public class GunData : ScriptableObject {
    public string gunName;
    [SerializeField] public GunProperties properties;
    [SerializeField] public GunViewModel viewModel;
    [SerializeField] public GunEffect effects;
}

[Serializable]
public class GunProperties {
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
    [Tooltip("How much ammo is spent per shot (More bullets will NOT fire, use bulletsPerAmmo for that)")]
    public int ammoPerShot = 1;
    [Tooltip("How many bullets flies per ammo used. Total bullets fired = ammo spent * bulletsPerAmmo (rounds down for fractional numbers)")]
    public float bulletsPerAmmo = 1;
    [Tooltip("How many times the gun fires per trigger")]
    public int shotsPerTrigger = 1;
    [Tooltip("The time (in seconds) between shots for shotsPerTrigger")]
    public float shotRate = 0;
    [Tooltip("The speed the bullet flies after being shot (for projectile-based guns)")]
    public float bulletSpeed = 1f;
    [Tooltip("The bullet object the gun shoots out (for projectile-based guns)")]
    public BulletBase bullet;

    public enum GunType {
        Raycast = 0,
        Projectile = 1,
        Burst = 2
    }
}

[Serializable]
public class GunViewModel {
    [Tooltip("Model")]
    public GameObject gunModel;
    [Tooltip("Animation")]
    public RuntimeAnimatorController animatorController;
    [Tooltip("Offset")]
    public Vector3 gunOffset = Vector3.zero;
    [Tooltip("Rotation")]
    public Quaternion gunRotation = Quaternion.identity;
    [Tooltip("Crosshair")]
    public Sprite crosshair;
}

[Serializable]
public class GunEffect {
    [Tooltip("Tracers")]
    public ParticleSystem tracers;
    [Tooltip("Muzzle Flash")]
    public ParticleSystem muzzleFlash;
    [Tooltip("Impact Effect")]
    public ParticleSystem impactEffect;
    [Tooltip("Offset")]
    public Vector3 effectOffset = Vector3.zero;
    [Tooltip("Rotation")]
    public Quaternion effectRotation = Quaternion.identity;
}