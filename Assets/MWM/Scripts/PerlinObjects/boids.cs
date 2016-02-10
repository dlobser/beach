using UnityEngine;
using System.Collections;

public class boids : MonoBehaviour {

	public GameObject[] birds;
	public GameObject target;

	private GameObject[] dummies;
	private GameObject[] noises;

	public float moveSpeed;
	public float noiseAmount;
	public float noiseScale;
	public float noiseSpeed = 1f;

    private Perlin noise;

	// Use this for initialization
	void Start () {
		dummies = new GameObject[birds.Length];
		noises =new GameObject[birds.Length];
        noise = new Perlin();

		for (int i = 0; i < birds.Length; i++) {
			dummies[i] = new GameObject();
			noises[i] = new GameObject();
			noises[i].transform.parent = dummies[i].transform;
			birds[i].transform.position = target.transform.position;
			dummies[i].transform.position = target.transform.position;
		}
	}
	
	// Update is called once per frame
	void Update () {

		for (int i = 0; i < birds.Length; i++) {
			dummies[i].transform.position = Vector3.MoveTowards(dummies[i].transform.position,target.transform.position,Time.deltaTime*moveSpeed);
			for(var j = 0 ; j < birds.Length ; j++){
				if(i==j)
					j++;
				if(j<birds.Length)
					dummies[i].transform.position = Vector3.MoveTowards (dummies[i].transform.position,dummies[j].transform.position,1f/Vector3.Distance(dummies[i].transform.position,dummies[j].transform.position)*Time.deltaTime*-1f);
			}
			Vector3 d = dummies[i].transform.localPosition;
			noises[i].transform.position = dummies[i].transform.position + d * Perlin.Noise(noiseSpeed*Time.time+d.x*noiseScale,noiseSpeed*Time.time+d.y*noiseScale,noiseSpeed*Time.time+d.z*noiseScale)*noiseAmount;
            birds[i].transform.position = Vector3.Lerp(birds[i].transform.position,noises[i].transform.position,moveSpeed);
		}
	
	}
}
