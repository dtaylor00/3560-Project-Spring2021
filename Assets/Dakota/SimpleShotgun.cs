/*
 * File:		 SimpleShotgun.cs
 * Author:		 Dakota Taylor
 * Created:		 15 February 2021
 * Modified:	 23 February 2021
 * Desc:		 A simple shotgun using raycasts. Has a slow firerate, very small ammo clip, a ton of inaccuracy, and small distance, but shoots many pellets at once.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleShotgun : BaseGun {
    [Tooltip("The amount of pellets fired per shot")]
    [SerializeField] private int pelletCount = 10;

    public void Reset() {
        fireRate = 2.0f;
        maxAmmo = 2;
        inaccuracy = 0.1f;
        maxDistance = 30.0f;
    }

    public override void Start() {
        base.Start();
    }

    public override void Fire() {
        base.Fire();
        Ray[] bullets = new Ray[pelletCount];
        for (int i = 0; i < pelletCount; i++) {
            bullets[i] = new Ray(camTransform.position, OffsetDirection(camTransform, inaccuracy));
            Debug.DrawRay(bullets[i].origin, bullets[i].direction * maxDistance, Color.red, 5);

            Physics.Raycast(bullets[i], out RaycastHit rayhit, maxDistance);
            if (rayhit.collider != null) {
                Debug.Log("raycast hit!");
            }
        }
    }
}
