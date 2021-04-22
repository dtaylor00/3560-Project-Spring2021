using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformAttach : MonoBehaviour
{
    //Suppose to let the player move with a moving platform
    public GameObject Player_Person;
    //Does not work
    private void OnTriggerEnter(Collider other) {
        if(other.gameObject.tag == "Player"){
            Player_Person.gameObject.transform.SetParent(gameObject.transform,true);
        }
    }

    private void OnTriggerExit(Collider other) {
        if(other.gameObject.tag == "Player"){
            Player_Person.gameObject.transform.parent = null;
        }
    }

}
