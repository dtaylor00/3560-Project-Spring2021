using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunPickup : MonoBehaviour {
    public GunData gun;
    public float oscillateHeight = 1;
    public float oscillateFrequency = 1;
    public float rotationSpeed = 1;
    private Vector3 startPos;

    public void Start() {
        startPos = transform.position;
    }

    public void Update() {
        var pos = transform.position;
        pos.y = startPos.y + oscillateHeight * Mathf.Cos(oscillateFrequency * Time.time);
        transform.position = pos;

        transform.Rotate(0, rotationSpeed, 0);
    }

    public void OnTriggerEnter(Collider other) {
        Debug.Log("collided");
        if (other.tag == "Player") {
            Debug.Log("with player");
            GunManager gunManager = other.gameObject.GetComponent<GunManager>();
            if (gunManager == null) {
                Debug.Log("Player: " + other + " does not have gun manager!");
            } else {
                gunManager.AddGun(gun);
                Destroy(gameObject);
            }
        }
    }

}
