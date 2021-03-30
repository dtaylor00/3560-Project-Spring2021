/*
 * File:		 GunUISample.cs
 * Author:		 Dakota Taylor
 * Created:		 11 March 2021
 * Modified:	 11 March 2021
 * Desc:		 A sample of a Gun UI that display a crosshair and 3d gun model in from of the camera.
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GunUISample : MonoBehaviour {
    public Camera renderCamera;
    public GameObject gunModel;
    public Vector3 gunOffset;
    public Quaternion gunRotation;
    public Sprite crosshair;
    public ParticleSystem muzzleFlash;
    public Vector3 muzzleOffet;
    public Quaternion muzzleRotation;

    [SerializeField] protected GunEventHandler gunEventHandler;

    void OnEnable() {
        gunEventHandler.OnFire += () => muzzleFlash.Play();
    }

    void OnDisable() {
        gunEventHandler.OnFire -= () => muzzleFlash.Play();
    }

    void Start() {
        gunModel = Instantiate(gunModel, gunOffset, gunRotation);
        gunModel.transform.SetParent(renderCamera.transform, false);

        muzzleFlash = Instantiate(muzzleFlash, muzzleOffet, muzzleRotation);
        muzzleFlash.transform.SetParent(gunModel.transform, false);

        // Creating crosshair in front of camera
        GameObject parent = new GameObject("Gun GUI Canvas");
        parent.layer = 5; // UI layer

        var canvas = parent.AddComponent<Canvas>();
        canvas.renderMode = RenderMode.ScreenSpaceCamera;
        canvas.worldCamera = renderCamera;
        canvas.planeDistance = 1;

        var scaler = parent.AddComponent<CanvasScaler>();
        scaler.uiScaleMode = CanvasScaler.ScaleMode.ScaleWithScreenSize;
        scaler.referenceResolution = new Vector2(400, 300);
        scaler.matchWidthOrHeight = 0.5f;

        parent.AddComponent<CanvasRenderer>();

        GameObject child = new GameObject("Crosshair Image");
        child.layer = 5;

        var image = child.AddComponent<Image>();
        image.sprite = crosshair;
        image.SetNativeSize();

        child.transform.SetParent(parent.transform, false);
    }
}
