using UnityEngine;
using System.Collections;

namespace exp3{
public class switchAnimations : MonoBehaviour {
	
		bool switcher = false;
	Animator anim;
		bool timeToSwitch = false;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
			anim.Play ("Take 001");

//			print (anim.GetCurrentAnimatorClipInfo(0).);
	}
	
	// Update is called once per frame
	void Update () {

//		print();
			if (anim.GetCurrentAnimatorStateInfo (0).normalizedTime % 2f > 1) {
				if(Random.value>.8f){
					timeToSwitch = true;
					hit ();
				}
			}
	}

	void hit(){
			if (timeToSwitch) {
				switcher = !switcher;
				if (switcher) {
					anim.Play ("Take 001");
					timeToSwitch = false;
				} else {
					anim.Play ("Take 0010");
					timeToSwitch = false;
				}
			}
		
	}
}
}