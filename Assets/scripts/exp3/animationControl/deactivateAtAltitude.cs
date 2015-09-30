using UnityEngine;
using System.Collections;

namespace exp3{
	public class deactivateAtAltitude : MonoBehaviour {

		public float altitude;

		// Update is called once per frame
		void Update () {
			if (transform.position.y > altitude)
				gameObject.SetActive (false);
		}
	}

}