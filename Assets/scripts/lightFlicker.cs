using UnityEngine;
using System.Collections;
[ExecuteInEditMode]
public class lightFlicker : MonoBehaviour {

	public float amount = 1f;
	public float freq = 1f;
	public float chance = .85f;
	private Light lt;
	private float intense;
	// Use this for initialization
	void Start () {
	
		intense = 0f;
		lt = GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {
		if (Random.value > chance)
			intense = amount;
		if (intense > 0)
			intense -= .2f;

		lt.intensity = intense;
		lt.intensity += Mathf.Sin (Mathf.Cos (Mathf.Sin (Time.frameCount * freq) * 1.1f))*1f;//*amount;
	}
}
