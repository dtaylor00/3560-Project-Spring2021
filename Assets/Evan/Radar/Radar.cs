using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Security.Cryptography;
using System.Security.Permissions;
using UnityEngine;

public class Radar : MonoBehaviour {
    public GameObject[] trackedObjects;
    public GameObject radarPrefab;
    public bool loadZombies;

    void Start() {
        if (loadZombies) {
            trackedObjects = GameObject.FindGameObjectsWithTag("Zombie");
        }
        CreateRadarObjects();
    }

    void CreateRadarObjects() {
        foreach (GameObject gameObject in trackedObjects) {
            GameObject radarPin = Instantiate(radarPrefab, gameObject.transform);
            radarPin.name = "Radar Pin";
        }
    }
}
