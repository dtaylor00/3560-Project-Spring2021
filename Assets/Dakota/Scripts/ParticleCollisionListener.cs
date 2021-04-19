/*
 * File:		 ParticleCollisionListener.cs
 * Author:		 Dakota Taylor
 * Created:		 19 April 2021
 * Modified:	 19 April 2021
 * Desc:		 A class that listens to particle collision events
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ParticleCollisionListener : MonoBehaviour {
    public UnityEvent<GameObject> OnCollision = new UnityEvent<GameObject>();
    void OnParticleCollision(GameObject other) {
        Debug.Log("on particle collision");
        OnCollision?.Invoke(other);
    }
}
