using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

public class GunManagerTests {
    [Test]
    public void GunManagerWeaponSwitchTests() {
        var gameObject = new GameObject();
        gameObject.SetActive(false);
        var gunManagerScript = gameObject.AddComponent<GunManager>();
        gunManagerScript.runInEditMode = true;
        gunManagerScript.allowRuntimeChanges = false;
        gunManagerScript.renderCamera = gameObject.AddComponent<Camera>();
        gunManagerScript.eventHandler = gameObject.AddComponent<GunEventHandler>();
        gunManagerScript.animationController = new GunAnimationController() { animator = gameObject.AddComponent<Animator>() };
        gunManagerScript.gunEffectController = new GunEffectController();
        gameObject.SetActive(true);

        // No guns
        Assert.AreEqual(null, gunManagerScript.primaryGun);

        GunData gunData = ScriptableObject.CreateInstance<GunData>();
        gunData.gunName = "Unit Test Gun";
        gunData.properties = new GunProperties();
        gunData.viewModel = new GunViewModel();
        gunData.effects = new GunEffect();

        // One gun
        gunManagerScript.AddGun(gunData);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        // Two guns
        gunManagerScript.AddGun(gunData);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[1], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[1], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        // Three guns
        gunManagerScript.AddGun(gunData);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[1], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[2], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[2], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[1], gunManagerScript.primaryGun);

        gunManagerScript.SwitchWeapon(-1);
        Assert.AreEqual(gunManagerScript.guns[0], gunManagerScript.primaryGun);

    }
}
