using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Power_Up : MonoBehaviour
{
    [SerializeField]
    public typeOfPowerUp type;

    public float valueToSet;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player"){
            if(type == typeOfPowerUp.Jump){
                other.gameObject.GetComponent<Movement_FPS>().jumpHeight = 18f;
                Destroy(this.gameObject);
            }
            else if(type == typeOfPowerUp.Sprint){
                other.gameObject.GetComponent<Movement_FPS>().sprintModifier = 2f;
                Destroy(this.gameObject);
            }
        }
    }



    public enum typeOfPowerUp { 
        Jump = 0,
        Sprint = 1
    }
}
