using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MeleeZombie:ZombieAI{
    public int damageToDeal = -20;
    public float zombieSpeed = 5;

    protected override void Chasing(){
        if(nm.speed < 20){
            nm.speed = zombieSpeed + Mathf.Sqrt(Time.time);
        }
        if(dist < 2){
            aiState = AIState.attack;
        }
    }
    protected override void Attack(){
        if(dist > 2){
            aiState = AIState.chasing;
        }
        playerHealthController.ModifyHealth(damageToDeal);
    }
}
