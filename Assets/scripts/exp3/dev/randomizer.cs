using UnityEngine;
using System.Collections;

public class randomizer : MonoBehaviour {

	public GameObject o;
	public int amount;
	public float size;
	public GameObject[] os;
	// Use this for initialization
	void Start () {
		os = new GameObject[amount];
		for (int i = 0; i < amount; i++) {
			GameObject oo = Instantiate(o);
			Mesh m = oo.GetComponent<MeshFilter>().mesh;
			Vector2 rand = new Vector2(Random.value, Random.value);
			Vector2[] nuv = new Vector2[m.uv.Length];
			for(int j = 0 ; j < m.uv.Length ; j++){
				nuv[j] = rand;
			}
			m.uv = nuv;
			os[i] = oo;
		}
	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i < amount; i++) {
			os[i].transform.position = new Vector3(Random.Range(-size,size),Random.Range(-size,size),20+Random.Range(0,10));// //Random.onUnitSphere*size*Random.Range(1f,2f);
		}
	}
}
