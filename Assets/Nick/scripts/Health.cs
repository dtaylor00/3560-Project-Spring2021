using UnityEngine;
using System.Collections;
using UnityEngine.Events;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System;
using UnityEngine.InputSystem;
public class Health : MonoBehaviour {
    [SerializeField] private int maxHealth = 100;
    private int currentHealth;

    public event Action<float> OnHealthPctChanged = delegate { };
    public event Action OnDeath = delegate { };

    private void OnEnable() {
        currentHealth = maxHealth;
        OnHealthPctChanged += percent => {
            if (percent <= 0) OnDeath.Invoke();
        };
    }

    public void ModifyHealth(int amount) {
        currentHealth = Mathf.Clamp(currentHealth + amount, -maxHealth, maxHealth);

        float currentHealthPct = (float)currentHealth / maxHealth;
        OnHealthPctChanged(currentHealthPct);
        if (gameObject.tag == "Player") print("my health is " + currentHealth);
    }
}
