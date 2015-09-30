using UnityEngine;
using System.Collections;

namespace exp3{
	public class looker : MonoBehaviour {

		public GameObject look;

		// Use this for initialization
		void Start () {
		
		}
		
		// Update is called once per frame
		void Update () {
			transform.LookAt (look.transform.position);
		}
	}
}