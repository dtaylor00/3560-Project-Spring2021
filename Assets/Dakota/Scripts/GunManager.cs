/*
 * File:		 GunManager.cs
 * Author:		 Dakota Taylor
 * Created:		 05 April 2021
 * Modified:	 19 April 2021
 * Desc:		 A script that holds the player's guns and manages switching between guns and other respective UI stuff.
 */

using System;
using System.Collections;
using System.Collections.Generic;
// using UnityEditor;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;
using UnityEditor;

public class GunManager : MonoBehaviour {

    public List<GunBase> guns;
    public GunBase primaryGun;
    public GunEventHandler eventHandler;
    [SerializeField] public GunAnimationController animationController;
    [SerializeField] public GunEffectController gunEffectController;
    public bool allowRuntimeChanges = true;

    public Camera renderCamera;
    protected MasterInput inputController; // NOTE: For switching weapons. Might be move into the event handler. 

    private int selectedGun = 0;

    public void Awake() {
        inputController = new MasterInput();
        if (!guns.Contains(primaryGun)) {
            Debug.Log("Primary not in gun list!");
            primaryGun = guns.Count > 0 ? guns[0] : null;

        }
        guns.ForEach(gun => DisableGun(gun));
    }

    public void OnEnable() {
        inputController.Enable();
        animationController.AddGunEvents(eventHandler);
        gunEffectController.AddEffects(eventHandler);
        inputController.Player.SwitchWeapon.performed += ctx => SwitchWeapon(ctx.ReadValue<float>());
        if (primaryGun != null) EnableGun(primaryGun);
    }

    public void OnDisable() {
        inputController.Disable();
        animationController.RemoveGunEvents(eventHandler);
        gunEffectController.RemoveEffects(eventHandler);
        inputController.Player.SwitchWeapon.performed -= ctx => SwitchWeapon(ctx.ReadValue<float>());
        if (primaryGun != null) DisableGun(primaryGun);
    }

    public void AddGun(GunData data) {
        GameObject gameObject = new GameObject(data.gunName);
        gameObject.SetActive(false);

        GunBase gun = data.properties.type switch {
            GunProperties.GunType.Raycast => gameObject.AddComponent<RaycastGun>(),
            GunProperties.GunType.Projectile => gameObject.AddComponent<ProjectileGun>(),
            GunProperties.GunType.Burst => gameObject.AddComponent<BurstGun>(),
            _ => null
        };

        if (gun != null) {
            gun.Initialize(data, renderCamera.transform, eventHandler);
            GameObject parent = GameObject.Find("Guns") ?? new GameObject("Guns");
            gun.transform.SetParent(parent.transform);

            if (guns.Count == 0) {
                primaryGun = gun;
                EnableGun(primaryGun);
                CreateViewModel(allowRuntimeChanges, false);
            }
            guns.Add(gun);
        }
    }

    public void EnableGun(GunBase gun) {
        gun.SetEventHandler(eventHandler);
        eventHandler.SetStateController(gun);
        animationController.AddStateChanges(gun);
        gun.gameObject.SetActive(true);
    }

    public void DisableGun(GunBase gun) {
        gun.gameObject.SetActive(false);
        animationController.RemoveStateChanges(gun);
    }

    public void SwitchWeapon(float delta) {
        if (guns.Count <= 1 || !primaryGun.CanSwitch()) return;

        DisableGun(primaryGun);
        primaryGun = delta > 0 ? NextGun() : PreviousGun(); // positive = scrolled up = next
        EnableGun(primaryGun);
        CreateViewModel(allowRuntimeChanges, false);
    }

    public GunBase NextGun() {
        selectedGun++;
        if (selectedGun >= guns.Count) {
            selectedGun = 0;
        }
        Debug.Log("next: " + selectedGun);
        return guns[selectedGun];
    }

    public GunBase PreviousGun() {
        selectedGun--;
        if (selectedGun <= -1) {
            selectedGun = guns.Count - 1;
        }
        Debug.Log("previous: " + selectedGun);
        return guns[selectedGun];
    }

    public void CreateViewModel(bool allowChanges, bool destroyImmediate) {
        if (!allowChanges) return;

        void DestroyObject(GameObject gameObject) {
            if (destroyImmediate) DestroyImmediate(gameObject);
            else Destroy(gameObject);
        }

        var viewModel = primaryGun.ViewModel;
        Transform previousChild; // used for deleting the existing view model

        var model = Instantiate(viewModel.gunModel, viewModel.gunOffset, viewModel.gunRotation);
        model.name = "Primary Gun";

        var animator = model.AddComponent<Animator>();
        animator.runtimeAnimatorController = viewModel.animatorController;
        animationController.animator = animator;

        var effects = primaryGun.Effects;

        var muzzleFlash = Instantiate(effects.muzzleFlash, effects.effectOffset, effects.effectRotation);
        muzzleFlash.name = "Muzzle Flash";
        gunEffectController.muzzleFlash = muzzleFlash;

        var tracers = Instantiate(effects.tracers, effects.effectOffset, effects.effectRotation);
        tracers.name = "Tracers";
        gunEffectController.tracers = tracers;
        gunEffectController.AddParticleListener();

        gunEffectController.impactEffect = effects.impactEffect;

        previousChild = renderCamera.transform.Find("Primary Gun");
        if (previousChild != null) DestroyObject(previousChild.gameObject);
        model.transform.SetParent(renderCamera.transform, false);
        muzzleFlash.transform.SetParent(model.transform, false);
        tracers.transform.SetParent(model.transform, false);


        // Creating crosshair in front of camera
        var guiCanvas = GameObject.Find("GUI Canvas");
        if (guiCanvas == null) {
            guiCanvas = new GameObject("GUI Canvas");
            guiCanvas.layer = 5; // UI layer

            var canvas = guiCanvas.AddComponent<Canvas>();
            canvas.renderMode = RenderMode.ScreenSpaceOverlay;
            canvas.targetDisplay = 0;

            var scaler = guiCanvas.AddComponent<CanvasScaler>();
            scaler.uiScaleMode = CanvasScaler.ScaleMode.ScaleWithScreenSize;
            scaler.referenceResolution = new Vector2(400, 300);
            scaler.matchWidthOrHeight = 0.5f;

            guiCanvas.AddComponent<CanvasRenderer>();
        }

        GameObject crosshairImage = new GameObject("Crosshair Image");
        crosshairImage.layer = 5;

        var image = crosshairImage.AddComponent<Image>();
        image.sprite = viewModel.crosshair;
        image.SetNativeSize();

        previousChild = guiCanvas.transform.Find("Crosshair Image");
        if (previousChild != null) DestroyObject(previousChild.gameObject);
        crosshairImage.transform.SetParent(guiCanvas.transform, false);
    }


#if UNITY_EDITOR
    // A custom editor that adds a button that creates view model so changes can be seen in the editor.
    [CustomEditor(typeof(GunManager))]
    public class GunManagerInspector : Editor {
        public override void OnInspectorGUI() {
            DrawDefaultInspector();
            if (GUILayout.Button("Create View Model")) {
                var manager = target as GunManager;
                manager.CreateViewModel(true, true);
                EditorUtility.SetDirty(manager);

            }
        }
    }
#endif
}
