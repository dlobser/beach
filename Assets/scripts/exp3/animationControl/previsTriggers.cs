using UnityEngine;
using System.Collections;

namespace exp3{
	public class previsTriggers : MonoBehaviour {

		Animator anim;
		private int count = 0;

		void Start(){
			anim = GetComponent<Animator> ();
		}
		// Update is called once per frame
		void Update () {

			if (Input.GetButtonDown("Fire1")&&count==0) //check to see if the left mouse was pushed.
			{
//				count++;
				anim.Play ("Take 001"); // if pushed play the animation listed within the quotation marks.
			}
//			if (Input.GetButtonDown("Fire1")&&count==1) //check to see if the left mouse was pushed.
//			{
//				anim.Play ("Take 0010"); // if pushed play the animation listed within the quotation marks.
//				count--;
//			}

		}
	}
}