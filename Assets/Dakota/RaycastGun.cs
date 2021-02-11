/*
 * File:		 RaycastGun.cs
 * Author:		 Dakota Taylor
 * Created:		 11 February 2021
 * Modified:	 11 February 2021
 * Desc:		 A sample gun script that uses a raycast for bullets. The bullet is instant and collision is handled upon fire; is either a hit or miss, no dodging. Good for guns that fires often or bullets are very fast, like machine guns or snipers.
 */


using UnityEngine;

public class RaycastGun : BaseGun {
    public override void Fire() {
        Ray ray = new Ray(camTransform.position, camTransform.forward);

        Debug.DrawRay(ray.origin, ray.direction, Color.red, 4f);
        Physics.Raycast(ray, out RaycastHit rayhit);

        if (rayhit.collider != null) {
            Debug.Log("raycast hit!");
        }
    }

}
