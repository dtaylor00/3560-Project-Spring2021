using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class szAI:MonoBehaviour
{
    public Health playerHealthController;
    protected NavMeshAgent hh;
    public Transform target;
    public enum AIState { chasing, attack, Leap };
    protected AIState aiState;
    protected float dist;
    public void Start()
    {

        hh = GetComponent<NavMeshAgent>();
        aiState = AIState.chasing;
        target = GameObject.FindGameObjectWithTag("Player").transform;
        StartCoroutine(Think());
    }

    protected IEnumerator Think()
    {
        while (true)
        {
            playerHealthController = target.GetComponent<Health>();
            dist = Vector3.Distance(target.position, transform.position);
            switch (aiState)
            {
                case AIState.chasing:
                    hh.SetDestination(target.position);
                    Chasing();
                    break;
                case AIState.attack:
                    Attack();
                    break;
                default:
                    break;
            }

            yield return new WaitForSeconds(1f);
        }
    }

    //impliment me!
    protected abstract void Chasing();

    //impliment me!
    protected abstract void Attack();

    protected abstract void Leap();
}