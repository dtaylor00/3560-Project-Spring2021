/*
 * File:		 GunAnimationBehavior.cs
 * Author:		 Dakota Taylor
 * Created:		 17 April 2021
 * Modified:	 18 April 2021
 * Desc:		 Add Description
 */


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunAnimationBehavior : StateMachineBehaviour {
    public override void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        animator.ResetTrigger("Fire"); // Needed so burst guns are less likely to trigger the fire animation again
        base.OnStateExit(animator, stateInfo, layerIndex);
    }
}
