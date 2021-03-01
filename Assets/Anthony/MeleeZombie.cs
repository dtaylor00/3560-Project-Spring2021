using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MeleeZombie:ZombieAI{

    protected override void Chasing(){
        if(nm.speed < 20){
            nm.speed = 5+Mathf.Sqrt(Time.time);
        }
        if(dist < 2){
            aiState = AIState.attack;
        }
    }
    protected override void Attack(){
        if(dist > 2){
            aiState = AIState.chasing;
        }
    }
}
