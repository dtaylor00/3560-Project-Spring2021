using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;


public class HellHound : MeleeZombie
{
    new public enum AIState { chasing = 0, attack = 1, leap = 2 };

    [Header("Hellhound")]
    new public AIState aiState;
    public float jumpHeight;
    public float jumpTime;
    public float jumpSpeed;
    public float jumpCooldownTime;

    [HideInInspector] bool jumpReady = true;
    protected Vector3 leapTop, leapTarget, leapStart;
    protected bool jumpDone = true;

    protected override void Chasing()
    {
        print("chasing");
        if (nm.speed < 20)
        {
            nm.speed = zombieSpeed + Mathf.Sqrt(Time.time);
        }
        if (dist < 5 && dist > 2)
        {   if (jumpReady)
            {
                print("leap");
                aiState = AIState.leap;
            }
        }
        if (dist < 2)
        {
            print("attack");
            aiState = AIState.attack;
        }

    }

    protected override IEnumerator Think()
    {

        while (true)
        {
            print("think is running");
            dist = Vector3.Distance(target.position, transform.position);
            switch (aiState)
            {
                case AIState.chasing:
                    print("chasing");
                    nm.SetDestination(target.position);
                    Chasing();
                    break;
                case AIState.leap:
                    if (jumpReady)
                    {
                        StartCoroutine(Leap());
                        jumpDone = false;
                    }
                    break;
                case AIState.attack:
                    Attack();
                    break;
                default:
                    break;
            }

            yield return new WaitForSeconds(ThinkSleepSeconds);
        }
    }

    protected override void Attack()
    {
        if (Mathf.Abs(dist) > 2)
        {
            aiState = AIState.chasing;
        }
        RaycastHit hit;
        Physics.SphereCast(transform.position, radius, transform.forward * hitDist, out hit);
        Debug.DrawRay(transform.position, transform.forward * hitDist);
        if (hit.collider != null && hit.collider.gameObject.GetComponent<Health>() != null && attackTimer <= 0)
        {
            hit.collider.gameObject.GetComponent<Health>().ModifyHealth(damageToDeal);
            attackTimer = attackTime;
        }
    }

    protected IEnumerator Leap()
    {
            jumpReady = false;
        nm.speed += jumpSpeed;
        yield return new WaitForSeconds(jumpTime);
        nm.speed -= jumpSpeed;
        aiState = AIState.chasing;
        yield return new WaitForSeconds(jumpCooldownTime);
        jumpReady = true;
        yield break;

        //old
        //print("leaping");
        //leapTarget = target.position;
        //leapStart = transform.position;
        //leapTop = (leapTarget - transform.position) / 2;
        //leapTop.y += jumpHeight;
        //float slerpTime = 0;
        //while (runCoroutine)
        //{
        //    print("leap " + slerpTime);
        //    slerpTime += Time.deltaTime;
        //    transform.position = Vector3.Lerp(leapStart, leapTop, slerpTime);
            
        //    if (slerpTime > 1)
        //    {
        //        print("fffff");
        //        slerpTime = 0;
        //        while (runCoroutine)
        //        {
        //            slerpTime += Time.deltaTime;
        //            transform.position = Vector3.Lerp(transform.position, leapTarget, slerpTime);
        //            if (slerpTime > 1)
        //            {
        //                jumpDone = true;
        //                yield break;
        //            }
        //        }
        //    }
        //    yield return null;
        //}
    }
}
