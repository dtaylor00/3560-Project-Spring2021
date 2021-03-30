using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MeleeZombie:ZombieAI{
    public int damageToDeal = -20;
    public float zombieSpeed = 5;
    public Animator animator;
    protected override void Chasing(){
        if(nm.speed < 10){
            nm.speed = zombieSpeed + Mathf.Sqrt(Time.time);
        }
        if(dist < 2){
            aiState = AIState.attack;
            animator.SetBool("Attack", true);
        }
    }
    protected override void Attack(){
        if(dist > 2){
            aiState = AIState.chasing;
            animator.SetBool("Attack", false);
        }
        playerHealthController.ModifyHealth(damageToDeal);

    }
}
