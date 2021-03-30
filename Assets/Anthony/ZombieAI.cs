using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class ZombieAI : MonoBehaviour
{
    [Header("Base AI")]
    protected NavMeshAgent nm;    
    public Transform target;
    public float ThinkSleepSeconds = .25f;

    public enum AIState {chasing = 0, attack = 1};
    protected AIState aiState;
    protected float dist;
    public void Start()
    {
        
        nm = GetComponent<NavMeshAgent>(); 
        aiState = AIState.chasing;
        target = GameObject.FindGameObjectWithTag("Player").transform;
        StartCoroutine(Think());
    }

    protected virtual IEnumerator Think(){
        
        while(true){
            print("think is running");
            dist = Vector3.Distance(target.position, transform.position);
            switch(aiState){
                case AIState.chasing:
                    nm.SetDestination(target.position);
                    Chasing();
                    break;
                case AIState.attack:
                    Attack();
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

