using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public abstract class szAI : MonoBehaviour
{
    NavMeshAgent nm;
    public Transform target;
    public enum AIState { chasing, attack, lunge };
    protected AIState aiState;
    public float speed;
    //public AIState aiState;
    // Start is called before the first frame update

    protected void Start()
    {
        nm = GetComponent<NavMeshAgent>();
        aiState = AIState.chasing;
        target = GameObject.FindGameObjectWithTag("Player").transform;
        StartCoroutine(Think());
    }

    protected IEnumerator Think()
    {
        while (true)
        {
            if (nm.speed < 30)              //sz Is faster than normal z
            {
                nm.speed = 10 + Mathf.Sqrt(Time.time);
            }
            float dist = Vector3.Distance(target.position, transform.position);
            if (dist == 5)
            {
                aiState = AIState.lunge;
            }
            else if (dist < 2)
            {
                aiState = AIState.attack;
            }
            else
            {
                aiState = AIState.chasing;
            }
            switch (aiState)
            {

                case AIState.chasing:
                    nm.SetDestination(target.position);
                    break;
                case AIState.attack:

                    break;
                default:
                    break;
            }

            yield return new WaitForSeconds(1f);
        }
    }

    //impliment me! Need to make....
    protected abstract void lunge();

    //impliment me! Need to make....
    protected abstract void Chasing();

    //impliment me! Need to make.....
    protected abstract void Attack();
}