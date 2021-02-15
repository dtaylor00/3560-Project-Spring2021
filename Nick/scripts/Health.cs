public class Health : MonoBehaviour
{
    [SerializeField]
    private int maxHealth = 100;

    private int currentHealth;

    public event Action<float> OnHealthPctChanged = delegate ( );

    private void OnEnable(){
        currentHealth = maxHealth;
    }

    public void ModifyHealth(int amount){
        currentHealth += amount;

        float currentHealthPct = (float)currentHealth / (float)maxHealth;
        OnHealthPctChanged(currentHealthPct);
    }

    private void Update(){
        if (Input.GetKeyDown(KeyCode.Space))
            ModifyHealth(-10);
    }

    private void isDead(){
        if(currentHealth == 0)
            return true;
        else
        {
            return false;
        }
    }
}