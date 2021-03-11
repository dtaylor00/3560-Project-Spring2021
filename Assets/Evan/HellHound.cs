using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;


public class HellHound:szAI
{

    protected override void Chasing()
    {
        if (hh.speed < 20)
        {
            hh.speed = 20;
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
        leaper = new Vector3.Distance(target.position, transform.position.x + 4, transform.position.y + 6);
    }
    protected override void Attack()
    {
        if (dist > 2)
        {
            aiState = AIState.chasing;
        }
        int damage = -75;
        playerHealthController.ModifyHealth(damage);
    }
}