using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MeleeZombie:ZombieAI{
    [Header("Melee Zombie")]
    public int damageToDeal = -20;
    public float zombieSpeed = 5;
    public float radius;
    public float hitDist;
    protected float attackTimer = 0; 
    public float attackTime;

    protected override void Chasing(){
        if(nm.speed < 20){
            nm.speed = zombieSpeed + Mathf.Sqrt(Time.time);
        }
        if(Mathf.Abs(dist) < 2){
            changeState(AIState.attack);
        }
    }
    protected override void Attack(){
        if(Mathf.Abs(dist) > 2){
            changeState(AIState.chasing);
        }
        RaycastHit hit;
        Physics.SphereCast(transform.position, radius, transform.forward * hitDist, out hit);
        Debug.DrawRay(transform.position, transform.forward * hitDist);
        if (hit.collider != null && hit.collider.gameObject.GetComponent<Health>() != null && attackTimer <= 0)
        {
            print("attack!");
            hit.collider.gameObject.GetComponent<Health>().ModifyHealth(damageToDeal);
            attackTimer = attackTime;
        }
    }

    private void Update()
    {
        if (attackTimer > 0)
        {
            attackTimer -= Time.deltaTime;
            print("tick!");
        }
    }
}
