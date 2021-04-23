using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class Bosszombie:ZombieAI
{
    public GameObject fireballcollider;
    public int damageToDeal = -20;
    public float zombieSpeed = 0;
    public Animator animator;
    protected override void Chasing(){
        findrotation();
        nm.speed = 0;
        if(dist < 15){
            aiState = AIState.attack;
            animator.SetBool("Attack", true);
        }
    }
    protected override void Attack(){
        findrotation();
        if(dist > 30){
            aiState = AIState.chasing;
            animator.SetBool("Attack", false);
        }
        Vector3 left = transform.position;
        left.y += 3;
        GameObject fireball = Instantiate(fireballcollider,left,transform.rotation) as GameObject;
        fireball.layer = 7;
        Rigidbody rb = fireball.GetComponent<Rigidbody>();
        rb.velocity = transform.forward * 20f;
        fireball.transform.parent=null;
    }
    protected void findrotation(){
        Vector3 temp = transform.position;
        temp.y += 3;
        Vector3 relativePos = target.position - temp;
        Quaternion rotation = Quaternion.LookRotation(relativePos, Vector3.up);
        transform.rotation = rotation;
    }

}
