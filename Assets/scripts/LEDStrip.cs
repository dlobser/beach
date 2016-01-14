using UnityEngine;
using System.Collections;

public class LEDStrip : MonoBehaviour {

	public GameObject flare;
	public int amount;
	public GameObject[] flares;
	public float speed = 1;
	public float freq = 1;
	public Material flareMat;
	public float scale = 1;

	public float minScale = .1f;
	public GameObject target;

	// Use this for initialization
	void Start () {
		flares = new GameObject[amount];
		for (int i = 0; i < amount; i++) {
			flares[i] = Instantiate(flare);
			flares[i].GetComponent<SpriteRenderer>().color = new Color(Random.value,Random.value,Random.value);
			flares[i].transform.parent = transform;
			TrailRenderer trail = flares[i].AddComponent<TrailRenderer>();
			trail.endWidth=0;
			trail.time = 1;
			trail.startWidth = .05f;
			Material newMat = new Material(Instantiate(flareMat));
			newMat.color = flares[i].GetComponent<SpriteRenderer>().color;
			trail.material = newMat;
		}
	}
	
	// Update is called once per frame
	void Update () {
		float d = Vector3.Distance (transform.position, target.transform.position);
//		transform.Rotate (new Vector3 (0, 0, 90*Time.deltaTime));
		for (int i = 0; i < amount; i++) {
			flares [i].transform.localPosition = new Vector3 (0,
			                                                  -i*minScale*d,
			                                                  Mathf.Sin ((float)i * freq + Time.time * speed)*scale);
		}	
	}
}
