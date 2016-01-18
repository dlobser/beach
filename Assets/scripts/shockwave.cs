using UnityEngine;
using System.Collections;

public class shockwave : MonoBehaviour {

	public GameObject aud;
	Material mat;
	public GameObject quad;
	public int amount;
	GameObject audParent;
	public float speed = 30;
	public float extent = 50;
	public float frequency = 1;
	public float displace = 1;
	public float scaleY = 0;
	public GameObject container;

	bool end = false;
	float count = 0;
	// Use this for initialization
	void Start () {
		if (container == null)
			container = new GameObject ();
		mat = quad.GetComponent<Renderer> ().sharedMaterial;
		audParent = new GameObject ();
		audParent.transform.parent = container.transform;
		aud.transform.parent = audParent.transform;
		aud.transform.localPosition = new Vector3 (0, 0, 1);
		for (int i = 0; i < amount; i++) {
			Vector3 rand = Random.insideUnitSphere;
			GameObject t = Instantiate(quad,Vector3.Scale(rand*extent,new Vector3(1,scaleY,1)),Quaternion.identity) as GameObject;
			t.transform.parent = container.transform;
			t.transform.LookAt(Vector3.zero);
		}
	}
	
	// Update is called once per frame
	void Update () {
//		if (Input.anyKeyDown) {
//			count = 0;
			end = true;
//			print ("poop");
//		}
		if (end) {
			count+=Time.deltaTime*speed;

			if(count>extent){
				count = 0;
//				end=false;
			}
			this.transform.localScale = new Vector3(count,count,count);

		}
//		float a = Mathf.Abs (Mathf.Sin (Time.time * speed) * extent);
//		this.transform.localScale = new Vector3 (
//			a, a, a);
		audParent.transform.localPosition = this.transform.localPosition;
		aud.transform.localPosition = new Vector3 (0, 0, this.transform.localScale.x);
		audParent.transform.LookAt (Camera.main.transform.position);
		mat.SetFloat ("_Offset", this.transform.localScale.x/3.14f);
		mat.SetVector ("_Center", this.transform.localPosition);
		mat.SetFloat ("_Amount", 1 - (this.transform.localScale.x / extent));
		mat.SetFloat ("_Freq", frequency);
		mat.SetFloat ("_Displace", displace);
	}
}
