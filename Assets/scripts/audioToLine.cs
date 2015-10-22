using UnityEngine;
using System.Collections;

public class audioToLine : MonoBehaviour {

	LineRenderer ln;
	AudioSource aud;
	float[] wave;
	public int samples = 1024;
	public float height = 500;
	public float amount = 1f;

	// Use this for initialization
	void Start () {
		ln = GetComponent<LineRenderer> ();
		aud = GetComponent<AudioSource> ();
		wave = new float[samples];
		ln.SetVertexCount (wave.Length);
	}
	
	// Update is called once per frame
	void Update () {
		wave = aud.GetOutputData (samples, 0);
//		aud.GetSpectrumData (wave, 0, FFTWindow.BlackmanHarris);
		for (int i = 0; i < samples; i++) {
			float off = (Mathf.Cos(((float)i/samples)*Mathf.PI*2f))*-.5f+.5f;
			int q = i+1;
			if(i>=samples-1)
				q=samples-1;
			ln.SetPosition(i,transform.position+new Vector3(amount*-off*wave[i]*100,((float)i/samples)*height,amount*off*wave[q]*100));
		}

	
	}
}
