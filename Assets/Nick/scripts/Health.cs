using UnityEngine;
using System.Collections;
using UnityEngine.Events;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System;
using UnityEngine.InputSystem;
public class Health : MonoBehaviour
{
    [SerializeField]
    private int maxHealth = 100;

    private int currentHealth;

    //public delegate void doOnDie();

    //public static doOnDie death = new doOnDie();

    public event Action<float> OnHealthPctChanged = delegate { };

    private void OnEnable()
    {
        currentHealth = maxHealth;
    }

    public void ModifyHealth(int amount){
        currentHealth += amount;

        float currentHealthPct = (float)currentHealth / (float)maxHealth;
        OnHealthPctChanged(currentHealthPct);
    }

    private void Update(){
        if (InputSystem.GetDevice<Keyboard>().eKey.wasPressedThisFrame)
            ModifyHealth(-10);

        print(currentHealth);
        isDead()
    }

    private bool isDead(){
        if (currentHealth == 0)
        {
            print("whoops im dead");
            death();
            return true;
        }
        else
        {
            print("dang im alive");
            return false;
        }
    }
}