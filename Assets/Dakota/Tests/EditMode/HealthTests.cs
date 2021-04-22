using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

public class HealthTests {
    [Test]
    public void HealthTestsSimplePasses() {
        var healthScript = new GameObject().AddComponent<Health>();
        healthScript.runInEditMode = true;

        int maxHealth = 100;
        int currentHealth = 100;

        float ExpectedPercent() {
            return (float)currentHealth / maxHealth;
        }

        healthScript.OnHealthPctChanged += percent => {
            Assert.AreEqual(ExpectedPercent(), percent);
        };

        healthScript.ModifyHealth(0);

        currentHealth -= 10;
        healthScript.ModifyHealth(-10);

        currentHealth -= 50;
        healthScript.ModifyHealth(-50);

        currentHealth -= 100;
        healthScript.ModifyHealth(-100);

        currentHealth += 150;
        healthScript.ModifyHealth(150);

        healthScript.ModifyHealth(0);
    }
}
