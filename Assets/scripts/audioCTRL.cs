using UnityEngine;
using System.Collections;

public class audioCTRL : MonoBehaviour {

	public float speed = 1;
	public float amplitude = 1;

	Renderer rend;
	public AudioSource aud;
	float[] vol;

	float timer = 0;
	float lightSpeed = 0;

	public GameObject[] affected;
	public Vector3[] scales;
	public Vector2[] offs;
	 Vector3[] initScale;

	float[] a_avg;

	// Use this for initialization
	void Start () {
		initScale = new Vector3[affected.Length];
//		offs = new Vector2[affected.Length];

		for (int i = 0; i < affected.Length; i++) {
			initScale[i] = affected[i].transform.localScale;
		}
		rend = GetComponent<Renderer> ();
	    vol = new float[64];
		a_avg = new float[4];
	}
	
	// Update is called once per frame
	void Update () {

		aud.GetSpectrumData(vol, 0, FFTWindow.BlackmanHarris);
		float a, b, c;
		a = b = c = 0f;
		float g = vol.Length / 3;
		for (int i = 0; i < vol.Length; i++) {
			if(i<g)
				a+=vol[i];
			else if(i<g*2&&i>g)
				b+=vol[i];
			else
				c+=vol[i];
		}
		a /= g;
		b /= g;
		c /= g;

		lightSpeed += c * 20f;
		lightSpeed *= .99f;

		timer += b*10f;

		timer *= .99f;

		rend.sharedMaterial.SetFloat ("_Amount", amplitude * average (a_avg,a)*10);
		rend.sharedMaterial.SetFloat ("_Speed", speed* timer);
		rend.sharedMaterial.SetFloat ("_LightSpeed", lightSpeed);

		for(int i = 0 ; i < affected.Length ; i++){
			affected[i].transform.localScale = Vector3.Scale(initScale[i],Vector3.one+scales[i]*amplitude * average (a_avg,a)*10);
			if(affected[i].GetComponent<offsetUVS>()!=null){

				affected[i].GetComponent<offsetUVS>().speed = offs[i]*lightSpeed;
			}
		}
	}

	float average(float[] a, float n){
		for (int i = 0; i < a.Length-1; i++) {
			a[i] = a[i+1];
		}
		a[a.Length-1] = n;
		float avg =0f;
		for (int i = 0; i < a.Length; i++) {
			avg+=a[i];
		}
		avg/=a.Length;
		return avg;

	}
}
