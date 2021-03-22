/*
 * File:		 BulletBase.cs
 * Author:		 Dakota Taylor
 * Created:		 10 February 2021
 * Modified:	 22 March 2021
 * Desc:		 A script for managing a bullet gameobject. Uses the Unity physics system, so the gameobject must have a rigidbody and collider.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletBase : MonoBehaviour {
    public void Initialize(Vector3 force, float timeAlive = 2) {
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.AddForce(force, ForceMode.Impulse);
        Destroy(gameObject, timeAlive);
    }

    void OnCollisionEnter(Collision collision) {
        if (collision.gameObject.tag != "Bullet") {
            Debug.Log("collision from bullet! tag = " + collision.gameObject.tag);
            Destroy(gameObject);
        }
    }
}
