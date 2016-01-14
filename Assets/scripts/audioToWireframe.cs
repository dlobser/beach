using UnityEngine;
using System.Collections;

public class audioToWireframe : MonoBehaviour {

	public AudioManager aud;
	public wireFrameScratch wire;
	public float lineWidthMin = 0;
	public float lineWidthMax = 800;
	public float shadowSpeedMin = .1f;
	public float shadowSpeedMax = 1;
	public float BrightnessMin = .5f;
	public float BrightnessMax = .5f;

	int c = 0;

	// Use this for initialization
	void Start () {

	
	}
	
	// Update is called once per frame
	void Update () {
		if (wire != null) {
			wire.lineWidth = lineWidthMin + Mathf.Max (0.0f, aud.GetBands (1) * lineWidthMax);
			wire.brightness = BrightnessMin + Mathf.Max (0.0f, aud.GetBands (5) * BrightnessMax);
			wire.shadowSpeed = shadowSpeedMin + aud.GetBands (8) * shadowSpeedMax;
		}
	}

	Vector3 v3(float i){
		return new Vector3 (i, i, i);
	}
}
