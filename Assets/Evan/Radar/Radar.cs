using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using UnityEngine;

public class Radar : MonoBehaviour
{

    public GameObject[] trackedObjects;
    List<GameObject> radarObjects;
    public GameObject radarPrefab;
    List<GameObject> borderObjects;
    public float switchDistance;

    // Start is called before the first frame update
    void Start(){
        createRadarObjects();
    }

    void Update(){
        for(int i = 0; i < radarObjects.Count; i++){

        }
    }
    // Update is called once per frame
    void createRadarObjects(){

        radarObjects = new List<GameObject>();
        foreach (GameObject o in trackedObjects){
            GameObject k = Instantiate(radarPrefab, o.transform.position, Quaternion.identity) as GameObject;
            radarObjects.Add(k);
            GameObject j = Instantiate(radarPrefab, o.transform.position, Quaternion.identity) as GameObject;
            borderObjects.Add(j);
        }
    }
}
