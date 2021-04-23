using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZombieDeathBehavior : StateMachineBehaviour {
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        base.OnStateExit(animator, stateInfo, layerIndex);

        var zombie = animator.transform.parent.gameObject;
        Destroy(zombie);
    }
}
