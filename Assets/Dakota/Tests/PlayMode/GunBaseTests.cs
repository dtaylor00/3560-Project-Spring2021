using System;
using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

public class GunBaseTests {
    private GunData gunData;
    private GunBase gunBase;

    private void Setup() {
        var gameObject = new GameObject();
        gameObject.SetActive(false);

        gunBase = gameObject.AddComponent<RaycastGun>();
        gunData = ScriptableObject.CreateInstance<GunData>();
        gunData.gunName = "Unit Test Gun";
        gunData.properties = new GunProperties();
        gunData.viewModel = new GunViewModel();
        gunData.effects = new GunEffect();

        Assert.NotNull(gunData);
        gunBase.Initialize(gunData, gameObject.transform, GunEventsDummy.Instance);
        gameObject.SetActive(true);
    }


    [UnityTest]
    public IEnumerator FireGunTests() {
        Setup();

        Assert.AreEqual(false, gunBase.IsFiring);
        GunEventsDummy.Instance.OnFireStart.Invoke();
        Assert.AreEqual(true, gunBase.IsFiring);

        GunEventsDummy.Instance.OnFire.Invoke();
        yield return new WaitForSeconds(gunData.properties.fireRate);
        Assert.AreEqual(gunBase.CurrentAmmo > 0, gunBase.IsFiring);

        GunEventsDummy.Instance.OnFireEnd.Invoke();
        Assert.AreEqual(false, gunBase.IsFiring);

        yield return null;
    }

    [UnityTest]
    public IEnumerator ReloadGunTests() {
        Setup();
        gunBase.Fire();

        int ammoSpent = Math.Min(gunBase.CurrentAmmo, gunData.properties.ammoPerShot);
        Assert.AreEqual(gunData.properties.maxAmmo - ammoSpent, gunBase.CurrentAmmo);

        Assert.AreEqual(false, gunBase.IsReloading);
        GunEventsDummy.Instance.OnReloadStart.Invoke();
        Assert.AreEqual(true, gunBase.IsReloading);

        Assert.AreEqual(gunData.properties.maxAmmo - ammoSpent, gunBase.CurrentAmmo);
        yield return new WaitForSeconds(gunData.properties.reloadTime);
        Assert.AreEqual(false, gunBase.IsReloading);
        Assert.AreEqual(gunData.properties.maxAmmo, gunBase.CurrentAmmo);

        yield return null;
    }
}
