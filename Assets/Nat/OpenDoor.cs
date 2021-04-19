using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoor : MonoBehaviour
{
    public GameObject o;
    public int timer;
    private bool isDoorOpen;
    private float t;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (isDoorOpen)
        {
            t += Time.deltaTime;
            if (t > timer)
            {
                isDoorOpen = false;
                o.GetComponent<Collider>().enabled = true;
                o.GetComponent<Renderer>().enabled = true;
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            o.GetComponent<Collider>().enabled = false;
            o.GetComponent<Renderer>().enabled = false;
            isDoorOpen = true;
        }
    }
}
