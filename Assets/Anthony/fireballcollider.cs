using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fireballcollider : MonoBehaviour
{
    public int damageToDeal = -100;
    public Health playerHealthController;
    [SerializeField] float destroyTime = 5f;

    public void Initialize(int damage) {
        this.damageToDeal = damage;
    }

    void Start(){
        Destroy(this.gameObject, destroyTime);
        gameObject.tag = "Bullet";
        Rigidbody rd =GetComponent<Rigidbody>();
        Transform target = GameObject.FindGameObjectWithTag("Player").transform;
        playerHealthController = target.GetComponent<Health>();

    }
    void OnTriggerEnter(Collider collision){
        if(collision.CompareTag("Player")){
            playerHealthController.ModifyHealth(damageToDeal);
        }
        Destroy(this.gameObject);
    }
}
