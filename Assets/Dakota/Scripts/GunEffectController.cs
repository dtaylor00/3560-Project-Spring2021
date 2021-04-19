/*
 * File:		 GunEffectController.cs
 * Author:		 Dakota Taylor
 * Created:		 14 April 2021
 * Modified:	 19 April 2021
 * Desc:		 A class that play effects in response to gun events
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[Serializable]
public class GunEffectController {
    public UnityAction PlayFireEffects;
    public ParticleSystem muzzleFlash;
    public ParticleSystem tracers;
    public ParticleSystem impactEffect;
    [SerializeField] public ParticleCollisionListener listener;

    public UnityAction<GameObject> PlayImpactEffect;

    public GunEffectController() {
        CreateActions();
    }

    private void CreateActions() {
        PlayFireEffects = () => {
            muzzleFlash?.Play();
            tracers?.Play();
        };

        PlayImpactEffect = other => {
            if (impactEffect == null) return;
            List<ParticleCollisionEvent> events = new List<ParticleCollisionEvent>();
            tracers.GetCollisionEvents(other, events);
            foreach (var e in events) {
                var effect = GameObject.Instantiate(impactEffect, e.intersection, Quaternion.identity);

                if (e.colliderComponent.gameObject.tag == "Zombie") {
                    var main = effect.main;
                    main.startColor = Color.red;
                }

                effect.Play();
            }
        };
    }

    public void AddEffects(IGunEvents events) {
        events.OnFire.AddListener(PlayFireEffects);
        AddParticleListener();
    }

    public void RemoveEffects(IGunEvents events) {
        events.OnFire.RemoveListener(PlayFireEffects);
        AddParticleListener();
    }

    // NOTE: Some problems probably lies around this functionality
    public void AddParticleListener() {
        if (tracers == null) return;

        listener = tracers.gameObject.GetComponent<ParticleCollisionListener>()
                ?? tracers.gameObject.AddComponent<ParticleCollisionListener>();

        listener.OnCollision.AddListener(PlayImpactEffect);
    }
}
