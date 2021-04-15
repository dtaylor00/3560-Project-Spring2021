using UnityEngine;
using System.Collections;
using UnityEngine.Events;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System;
using UnityEngine.InputSystem;
using UnityEngine.AI;
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

        isDead();
    }

    private bool isDead(){
        if (currentHealth <= 0)
        {
            if(tag == "Player")
            {
                Destroy(this.gameObject);
            }
            if (GetComponent<NavMeshAgent>() != null)
            {
                Destroy(GetComponent<NavMeshAgent>());
                
            }
            Destroy(this.gameObject);
            //death();
            Destroy(this.gameObject);
            return true;
        }
        else
        {
            return false;
        }
    }
}
