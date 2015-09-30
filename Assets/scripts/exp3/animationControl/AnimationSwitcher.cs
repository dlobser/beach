using UnityEngine;
using System.Collections;

public class AnimationSwitcher : MonoBehaviour {

    Animator anim;

    public float[] weights;
    float totalWeight;

    float timer;
	// Use this for initialization
	void Start () {
        anim = GetComponent<Animator>();

        timer = Time.time + anim.GetCurrentAnimatorClipInfo(0).Length;
        
	}
	
	// Update is called once per frame
	void Update () {
        totalWeight = 0;
        for (int i = 0; i < weights.Length; i++)
        {
            totalWeight += weights[i];
        }
	}

    void SwitchAnimation() {
        float r = Random.Range(0, totalWeight);

        if (r < weights[0])
        {
            anim.Play("Take 001");
        }
        else if (r < weights[0] + weights[1])
        {
			anim.Play("Take 0010");
        }
        else 
        {
			anim.Play("Take 0011");
        }
    }
}
