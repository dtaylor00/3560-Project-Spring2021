using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyAI : MonoBehaviour
{
    NavMeshAgent nm;    
    public Transform target;
    public enum AIState {chasing, attack};
    public AIState aiState;

    //public AIState aiState;
    // Start is called before the first frame update
    void Start()
    {
        nm = GetComponent<NavMeshAgent>(); 
        StartCoroutine(Think());
    }
    IEnumerator Think(){
        while(true){
            switch(aiState){
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

    // Update is called once per frame
    void Update()
    {
        
    }
}
