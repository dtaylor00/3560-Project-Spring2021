using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;


public class HellHound:szAI
{

    protected override void Chasing()
    {
        if (hh.speed < 15)
        {
            hh.speed = 10 + Mathf.Sqrt(Time.time);
        }
        if (dist == 5)
        {
            aiState = AIstate.Leap;
        }
        if (dist < 2)
        {
            aiState = AIState.attack;
        }
        
    }
    protected override void Leap()
    {
        leaper = new Vector3.Distance(target.position, transform.position.x + 3, transform.position.y + 6);
    }
    protected override void Attack()
    {
        if (dist > 2)
        {
            aiState = AIState.chasing;
        }
        int damage = -100;
        playerHealthController.ModifyHealth(damage);
    }
}