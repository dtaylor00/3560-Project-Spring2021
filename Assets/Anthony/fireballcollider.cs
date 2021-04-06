using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fireballcollider : MonoBehaviour
{
    public int damageToDeal = -100;
    public Health playerHealthController;
    [SerializeField] float destroyTime = 5f;
    void Start(){
        Destroy(this.gameObject, destroyTime);
        Rigidbody rd =GetComponent<Rigidbody>();
        Transform target = GameObject.FindGameObjectWithTag("Player").transform;
        playerHealthController = target.GetComponent<Health>(); 

    }
    void OnTriggerEnter(Collider collision){
        if(collision.CompareTag("Player")){
            playerHealthController.ModifyHealth(-123456);
        }
        Destroy(this.gameObject);
    }
}
