using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class ZombieAI : MonoBehaviour
{
    [Header("Base AI")]
    protected NavMeshAgent nm;    
    public Transform target;
    public Animator animator;
    public float ThinkSleepSeconds = .25f;

    public enum AIState {chasing = 0, attack = 1, death = 2};
    protected AIState aiState;
    protected float dist;
    public void Start()
    {        
        nm = GetComponent<NavMeshAgent>(); 
        aiState = AIState.chasing;
        target = target ? target : GameObject.FindGameObjectWithTag("Player").transform;
        animator = animator ? animator : GetComponentInChildren<Animator>();
        var health = GetComponent<Health>();
        if(health != null)
            health.OnDeath += () => {
                animator.SetBool("Death", true);
                aiState = AIState.death;
            };

        StartCoroutine(Think());
    }

    protected virtual IEnumerator Think(){
        
        while(true){
            // print("think is running");
            dist = Vector3.Distance(target.position, transform.position);
            switch(aiState){
                case AIState.chasing:
                    nm.SetDestination(target.position);
                    Chasing();
                    break;
                case AIState.attack:
                    Attack();
                    break;
                case AIState.death:
                    nm.speed = 0;
                    nm.isStopped = true;
                    break;
                default:
                    break;
            }

            yield return new WaitForSeconds(ThinkSleepSeconds);
        }
    }

    protected void changeState(AIState state)
    {
        aiState = state;
    }

    //impliment me!
    protected abstract void Chasing();

    //impliment me!
    protected abstract void Attack();
}

