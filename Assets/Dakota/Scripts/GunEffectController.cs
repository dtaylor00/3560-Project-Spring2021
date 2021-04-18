/*
 * File:		 GunEffectController.cs
 * Author:		 Dakota Taylor
 * Created:		 14 April 2021
 * Modified:	 15 April 2021
 * Desc:		 Add Description
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[Serializable]
public class GunEffectController {
    public UnityAction EmitMuzzleFlash;
    public ParticleSystem muzzleFlash;
    public IGunEvents events;

    public GunEffectController() {
        CreateActions();
    }

    private void CreateActions() {
        EmitMuzzleFlash = () => {
            muzzleFlash?.Play();
        };
    }

    public void AddEffects() {
        events.OnFire.AddListener(EmitMuzzleFlash);
    }

    public void RemoveEffects() {
        events.OnFire.RemoveListener(EmitMuzzleFlash);
    }

}
