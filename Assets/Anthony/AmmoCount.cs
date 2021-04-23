using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class AmmoCount : MonoBehaviour
{
    public Text ammoAmount;
    public GunBase ammo;
    void Start(){
        ammo = GameObject.FindGameObjectWithTag("Player").GetComponent<GunBase>();
    }
    void Update()
    {
        ammoAmount.text= ammo.GetCurrentAmmo().ToString();
    }
}
