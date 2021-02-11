/*
 * File:		 BaseGun.cs
 * Author:		 Dakota Taylor
 * Created:		 08 February 2021
 * Modified:	 11 February 2021
 * Desc:		 An abstract script for managing the player's gun. By default, the script manages input, updating, reloading, and ammo. Inherited script need to implement what happens upon firing the gun. 
 */

using System.Collections;
using UnityEngine;

public abstract class BaseGun : MonoBehaviour {

    [Tooltip("The time (in seconds) before the gun can shoot again")]
    [SerializeField] protected float fireRate = 0.5f; // in seconds
    [Tooltip("The amount of ammo the player can hold")]
    [SerializeField] protected int maxAmmo = 30;
    [Tooltip("The time (in seconds) required to reload the gun")]
    [SerializeField] protected float reloadTime = 2f;

    // various variables need to keep track of gun state
    protected float lastFired = 0f;
    protected bool isFiring = false;
    protected bool isReloading = false;
    protected int currentAmmo;

    // for detecting input
    protected MasterInput inputController;

    // transform of the camera, used to spawn bullets
    protected Transform camTransform;


    public void Awake() {
        inputController = new MasterInput(); // needs to be in Awake because OnEnable occurs before Start
    }
    public void Start() {
        camTransform = gameObject.GetComponentInChildren<Camera>().transform;
        currentAmmo = maxAmmo;
    }

    public void OnEnable() {
        inputController.Enable();

        inputController.Player.Fire.performed += _ => isFiring = true;
        inputController.Player.Fire.canceled += _ => isFiring = false;

        inputController.Player.Reload.performed += _ => {
            if (!isReloading) StartCoroutine(Reload());
        };

    }

    public void OnDisable() {
        inputController.Disable();
        inputController.Player.Fire.performed -= _ => isFiring = true;
        inputController.Player.Fire.canceled -= _ => isFiring = false;

        inputController.Player.Reload.performed -= _ => {
            if (!isReloading) StartCoroutine(Reload());
        };
    }

    public void Update() {
        if (isFiring && CanShoot()) {
            Fire();
            currentAmmo--;
            Debug.Log("currentAmmo: " + currentAmmo);
        }
    }

    public virtual bool CanShoot() {
        return Time.time - lastFired > fireRate
            && currentAmmo > 0
            && !isReloading;
    }

    public abstract void Fire();

    public virtual IEnumerator Reload() {
        isReloading = true;
        Debug.Log("start reload");
        yield return new WaitForSeconds(reloadTime);
        currentAmmo = maxAmmo;
        Debug.Log("end reload");
        isReloading = false;
    }

}
