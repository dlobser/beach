using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SHaudioCTRL : MonoBehaviour {
	
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
	
	
	
	public int numOfSamples = 8192;
	public float spectrumRefreshRate = 30f;
	public bool SPHERES = true;
	private float[] freqData;
	private float[] band;
	private GameObject[] g;
	
	public float volume = 0f;
	public bool isPlaying = false;
	
	
	
	// Use this for initialization
	void Start()
	{
		// aud = this.GetComponent<AudioSource>();
		initScale = new Vector3[affected.Length];
		
		for (int i = 0; i < affected.Length; i++)
		{
			initScale[i] = affected[i].transform.localScale;
		}
		rend = GetComponent<Renderer>();
		vol = new float[64];
		a_avg = new float[4];
		
		SetUpSpectrum();
	}
	
	void Update()
	{
		
		float a = GetBands(new int[]{0,1,2,3,4});
		float c = GetBands(new int[] { 5, 6, 7});
		float b = GetBands(new int[] { 8,9,10, 11, 12});
		
		string db = "[ ";
		
		//for (int i = 0; i < band.Length; i++)
		//{
		//    db += band[i] + ", ";
		//}
		
		//db += "]";
		//Debug.Log(db);
		//Debug.Log(a + " " + b + " " + c);
		
		lightSpeed += c * 100f;
		lightSpeed *= .99f;
		
		timer += b * 10f;
		
		timer *= .99f;
		
		rend.sharedMaterial.SetFloat("_Amount", amplitude * a * 10f);
		rend.sharedMaterial.SetFloat("_Speed", speed * timer);
		rend.sharedMaterial.SetFloat("_LightSpeed", lightSpeed);
		
		//		print (lightSpeed);
		
		for (int i = 0; i < affected.Length; i++)
		{
			affected[i].transform.localScale = Vector3.Scale(initScale[i], Vector3.one + scales[i] * amplitude * a * 10);
			if (affected[i].GetComponent<offsetUVS>() != null)
			{
				
				affected[i].GetComponent<offsetUVS>().speed = offs[i] * lightSpeed;
			}
		}
		
	}
	
	void SetUpSpectrum()
	{
		freqData = new float[numOfSamples];
		
		int n = freqData.Length;
		
		int k = 0;
		for (int j = 0; j < freqData.Length; j++)
		{
			n = n / 2;
			if (n <= 0) break;
			k++;
		}
		
		band = new float[k + 1];
		
		if (SPHERES)
		{
			g = new GameObject[k + 1];
			
			for (int i = 0; i < band.Length; i++)
			{
				band[i] = 0;
				g[i] = GameObject.CreatePrimitive(PrimitiveType.Sphere);
				g[i].transform.position = this.transform.position + new Vector3(i, 0, 0);
			}
		}
		InvokeRepeating("check", 0.0f, 1.0f / spectrumRefreshRate);
	}
	
	private void check()
	{
		aud.GetSpectrumData(freqData, 0, FFTWindow.BlackmanHarris);
		
		int k = 0;
		int crossover = 2;
		
		for (int i = 0; i < freqData.Length; i++)
		{
			float d = freqData[i];
			float b = band[k];
			
			// find the max as the peak value in that frequency band.
			band[k] = (d > b) ? d : b;
			
			if (i > (crossover - 3))
			{
				k++;
				crossover *= 2;   // frequency crossover point for each band.
				if (SPHERES && g != null)
				{
					Vector3 tmp = new Vector3(g[k].transform.position.x, band[k] * 32, g[k].transform.position.z);
					g[k].transform.position = tmp;
				}
				band[k] = 0;
			}
		}
	}
	
	public float GetBands(int num)
	{
		return band[num];
	}
	
	public float GetBands(int[] nums)
	{
		float sum = 0f;
		
		for (int i = 0; i < nums.Length; i++)
		{
			sum += band[nums[i]];
		}
		
		return sum;
	}
	
	public float GetBands(List<int> nums)
	{
		float sum = 0;
		for (int i = 0; i < nums.Count; i++)
		{
			sum += band[nums[i]];
		}
		return sum;
	}
	
	
	
}
