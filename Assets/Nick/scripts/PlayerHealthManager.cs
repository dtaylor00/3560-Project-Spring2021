using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealthManager : MonoBehaviour {
    public Health Health;
    public float RegenTime = 5f;
    public float RegenCooldown = 0.2f;
    public int RegenAmount = 1;
    private float previousPercent = 100;
    private float lastHit;
    private float lastRegen;

    void Start() {
        Health = Health ? Health : GetComponent<Health>();
        if (Health != null) {
            Health.OnHealthPctChanged += percent => {
                if (percent < previousPercent) lastHit = Time.time;
                previousPercent = percent;
            };

            Health.OnDeath += () => {
                Destroy(gameObject, 5);
                var GUI = GameObject.Find("GUI Canvas");
                var gameOver = GUI?.transform.Find("GameOver");
                gameOver?.gameObject.SetActive(true);
            };
        }
    }

    void FixedUpdate() {
        var t = Time.time;
        if (t - lastHit > RegenTime && t - lastRegen > RegenCooldown) {
            Health.ModifyHealth(RegenAmount);
            lastRegen = t;
        }
    }

    void OnDestroy() {
        Application.Quit(0);
    }
}
