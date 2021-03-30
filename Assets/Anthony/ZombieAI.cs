using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class ZombieAI : MonoBehaviour
{
    public Health playerHealthController;
    protected NavMeshAgent nm;    
    public Transform target;
    public float ThinkSleepSeconds = .25f;

    public enum AIState {chasing, attack};
    protected AIState aiState;
    protected float dist;
    public void Start()
    {
        
        nm = GetComponent<NavMeshAgent>(); 
        aiState = AIState.chasing;
        target = GameObject.FindGameObjectWithTag("Player").transform;
        StartCoroutine(Think());
    }

    protected IEnumerator Think(){
        while(true){
            playerHealthController = target.GetComponent<Health>(); 
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

    //impliment me!
    protected abstract void Chasing();

    //impliment me!
    protected abstract void Attack();
}

