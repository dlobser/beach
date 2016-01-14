using UnityEngine;
using System.Collections;

public class spiralizeSprite : MonoBehaviour {

	public GameObject thing;
	public int amount = 10;
	public float scale = 1f;
	public float scaleMax = 1f;
	public float depth = 1f;
	public float radFrequency = .2f;
	public float radFrequencyMax = .2f;
	public float scaleUpAmount = 1f;
	public float spScale = 1f;
	public float rotator = 0f;
	public float rotatorMax = 0f;
	public GameObject parentPos;
	public float colorMult = 1f;
	public float rotSpeed = 1f;
	public float rotOffset = 0;

	private bool onceThrough = false;

	GameObject[] things;
	
	// Use this for initialization
	void myStart () {
		things = new GameObject[amount];
		GameObject thingParent = new GameObject () as GameObject;
		float radFreq = Random.Range (radFrequency, radFrequencyMax);
		float rotator2 = Random.Range (rotator, rotator+rotatorMax);
		for (int i = 0; i < amount; i++) {
			GameObject t = Instantiate (thing, 
			                            new Vector3 (
				Mathf.Sin (i * radFreq) * Random.Range(scale,scaleMax), 
				Mathf.Cos (i * radFreq) * Random.Range(scale,scaleMax), 
				i * depth
				), 
			    Quaternion.identity) as GameObject;
			float cOff = .333f+(Mathf.Sin((1f*i)*.1f)+1f)*.3f;
			cOff*=colorMult;
			if(t.GetComponent<SpriteRenderer>()!=null)
			t.GetComponent<SpriteRenderer>().color = new Color(Random.Range(.8f,1f)*cOff,Random.Range(.6f,.8f)*cOff,Random.Range(.3f,.6f)*cOff,1f);
			float s = spScale + (.5f+(-.5f*Mathf.Cos(((i*1f)/amount)*Mathf.PI * 2f)))*scaleUpAmount;
//			print (s);
			t.transform.Rotate(new Vector3(0,0,i*rotator2));
			t.transform.Rotate(new Vector3(0,0,rotOffset));
			t.transform.localScale = new Vector3(s,s,s);
			t.transform.parent = thingParent.transform;
			things[i]=t;

		}
		thingParent.transform.localScale = parentPos.transform.localScale;
		thingParent.transform.position = parentPos.transform.position;
		thingParent.transform.rotation = parentPos.transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {

		if (!onceThrough) {
			myStart ();
			onceThrough = true;
		}
		for (int i = 0; i < things.Length; i++) {
			things [i].transform.Rotate (new Vector3 (0, 0, rotSpeed*Mathf.Sin((1f*i)*.3f)));
		}
		
	}
}

