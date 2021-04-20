using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class AmmoCount : MonoBehaviour
{
    public Text ammoAmount;
    public GunManager ammo;
    void Start(){
        ammo ??= GameObject.FindGameObjectWithTag("Player").GetComponent<GunManager>();
    }
    void Update()
    {
        ammoAmount.text= ammo.primaryGun?.CurrentAmmo.ToString();
    }
}
