using UnityEngine;
using System.Collections;

namespace exp3{
public class setTilingOnPlanetToZero : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Renderer rend = GetComponent<Renderer> ();
		rend.sharedMaterial.SetFloat ("_Mix", 0);
	}

}
}