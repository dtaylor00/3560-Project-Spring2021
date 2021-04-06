using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using UnityEngine;

public class Radar : MonoBehaviour { 

    public GameObject[] trackedObjects;
    List<GameObject> radarObjects;
    public GameObject radarPrefab;

    // Start is called before the first frame update
    void Start()
    {
        createRadarObjects();
    }

    void Update()
    {

    }
    // Update is called once per frame
    void Update()
    {
        radarObjects = new List<GameObject>();
        foreach(GameObject o in trackedObjects)
        {

        }
    }
}
