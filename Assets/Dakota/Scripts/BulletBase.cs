/*
 * File:		 BulletBase.cs
 * Author:		 Dakota Taylor
 * Created:		 10 February 2021
 * Modified:	 19 April 2021
 * Desc:		 A script for managing a bullet gameobject. Uses the Unity physics system, so the gameobject must have a rigidbody and collider.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletBase : MonoBehaviour {
    private float damage;

    public void Initialize(Vector3 force, float timeAlive, float damage) {
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.AddForce(force, ForceMode.Impulse);
        Destroy(gameObject, timeAlive);
        this.damage = damage;
    }

    void OnCollisionEnter(Collision collision) {
        var tag = collision.collider.tag;
        if (tag != "Bullet" && tag != "Player") {
            var healthScript = collision.collider.gameObject.GetComponent<Health>();
            healthScript?.ModifyHealth((int)damage);
            Destroy(gameObject);
        }
    }
}
