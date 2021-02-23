/*
 * File:		 BaseBullet.cs
 * Author:		 Dakota Taylor
 * Created:		 10 February 2021
 * Modified:	 11 February 2021
 * Desc:		 A script for managing a bullet gameobject. Uses the Unity physics system, so the gameobject must have a rigidbody and collider.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseBullet : MonoBehaviour {
    public void Initialize(Vector3 force) {
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.AddForce(force, ForceMode.Impulse);
        Destroy(gameObject, 4f); // destroy object after 4 seconds
    }

    void OnCollisionEnter(Collision collision) {
        Debug.Log("collision from bullet!");
        Destroy(gameObject);
    }
}
