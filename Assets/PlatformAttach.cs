using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformAttach : MonoBehaviour
{
    //Suppose to let the player move with a moving platform
    public GameObject Player_Person;
    //Does not work
    private void OnTriggerEnter(Collider other) {
        if(other.gameObject == Player_Person){
            Player_Person.transform.parent = transform;
        }
    }

    private void OnTriggerExit(Collider other) {
        if(other.gameObject == Player_Person){
            Player_Person.transform.parent = null;
        }
    }

}
