using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MeleeZombie : ZombieAI {
    [Header("Melee Zombie")]
    public int damageToDeal = -20;
    public float zombieSpeed = 5;
    public float radius = 0.5f;
    public float hitDist = 1f;

    public float attackRate = 2f;
    protected float lastAttack = 0;

    protected override void Chasing() {
        if (nm.speed < 20) {
            nm.speed = zombieSpeed + Mathf.Sqrt(Time.time);
        }
        if (Mathf.Abs(dist) < 2) {
            animator.SetBool("Attack", true);
            changeState(AIState.attack);
        }
    }
    protected override void Attack() {
        if (Mathf.Abs(dist) > 2) {
            animator.SetBool("Attack", false);
            changeState(AIState.chasing);
        }

        var rot = Quaternion.LookRotation(new Vector3(target.transform.position.x - transform.position.x, transform.forward.y, target.transform.position.z - transform.position.z));
        StartCoroutine(SmoothRotation(rot));

        if (Time.time - lastAttack > attackRate) {
            Physics.SphereCast(transform.position + Vector3.up, radius, transform.forward * hitDist, out RaycastHit hit);
            // Physics.SphereCast(transform.position + Vector3.up, radius, transform.forward * hitDist, out RaycastHit hit,);
            RaycastHit[] hits = Physics.SphereCastAll(transform.position + Vector3.up, radius, transform.forward * hitDist);
            Debug.DrawRay(transform.position + Vector3.up, transform.forward * hitDist, Color.green, 4);

            var player = hits.FirstOrDefault(hit => hit.collider.gameObject == target.gameObject);

            if (player.collider != null) {
                Debug.Log("hit the player!");
                var health = player.collider.GetComponent<Health>();
                health?.ModifyHealth(damageToDeal);
            }
            lastAttack = Time.time;
        }
    }

    IEnumerator SmoothRotation(Quaternion target) {
        float progress = 0f;
        float speed = 2f;
        while (progress < 1f) {
            transform.rotation = Quaternion.Slerp(transform.rotation, target, progress);
            progress += Time.deltaTime * speed;

            if (progress <= 1f) yield return null;
        }

    }
}
