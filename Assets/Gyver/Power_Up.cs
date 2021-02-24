using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Power_Up : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player"){
            other.gameObject.GetComponent<Movement_FPS>().jumpHeight = 20f;
        }
    }
}
