using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class wakeUp : MonoBehaviour
{
    public GameObject thingToWakeUp;

    // Update is called once per frame
    void Update()
    {
        
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            thingToWakeUp.SetActive(true);
        }
    }
}
