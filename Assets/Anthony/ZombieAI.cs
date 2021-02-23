using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class ZombieAI : MonoBehaviour
{
    NavMeshAgent nm;    
    public Transform target;
    public enum AIState {chasing, attack};
    public AIState aiState;
    public float speed;
    //public AIState aiState;
    // Start is called before the first frame update
    void Start()
    {
        nm = GetComponent<NavMeshAgent>(); 
        aiState = AIState.chasing;
        target = GameObject.FindGameObjectWithTag("Player").transform;
        StartCoroutine(Think());
    }
    IEnumerator Think(){
        while(true){
            if(nm.speed < 20){
                nm.speed = 5+Mathf.Sqrt(Time.time);
            }
            float dist = Vector3.Distance(target.position, transform.position);
            if(dist < 2){
                aiState = AIState.attack;
            }
            else{
                aiState = AIState.chasing;
            }
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
