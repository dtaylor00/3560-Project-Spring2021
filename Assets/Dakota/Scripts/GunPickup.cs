using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunPickup : MonoBehaviour {
    public GunData gun;

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
