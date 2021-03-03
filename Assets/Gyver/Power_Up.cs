using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Power_Up : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player"){
            if(this.gameObject.name.Equals("JumpPowerUp")){
                other.gameObject.GetComponent<Movement_FPS>().jumpHeight = 20f;
                Destroy(this.gameObject);
            }
            else if(this.gameObject.name.Equals("SprintPowerUp")){
               // other.gameObject.GetComponent<Movement_FPS>().movementForce = 20f;
                Destroy(this.gameObject);
            }
        }
    }
}
