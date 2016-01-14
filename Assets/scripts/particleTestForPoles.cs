using UnityEngine;
using System.Collections;

public class particleTestForPoles : MonoBehaviour {
	
	public SpriteManager spManager;
	public float width = 100;
	public float height = 10;
	Sprite ClientSprite;
	public GameObject gClient;
	public int amount;
	Sprite[] clients;
	GameObject[] xForms; 
	float counter = 0;
	UVAnimation[] flaps;
	private bool built = false;
	Vector3[] initPositions;
	
	public void drawAnim(ArrayList polesWithLights){
		print (polesWithLights.Count);
		int len = polesWithLights.Count;
		clients = new Sprite[len*amount];
		xForms = new GameObject[len*amount];
		initPositions = new Vector3[len * amount];
		
		flaps = new UVAnimation[7];
		
		for (int i = 0; i < 7; i++) {
			flaps[i] = new UVAnimation ();
			flaps[i].name = "flap_"+(7-i);
			flaps[i].loopCycles = -1;
			flaps[i].framerate = 14;
			flaps[i].BuildUVAnim (new Vector2 (0f, (i+7f) / 14f), new Vector2 (1f / 14f, 1f / 14f), 14, 14, 14, 14);
		}
		
		int ct = 0;
		int lampCount = 0;
		for (int j = 0; j < polesWithLights.Count; j++) {
			for (int i = 0; i < amount; i++) {
				Transform pole = (Transform) polesWithLights[j];  
				//				print (pole);
				GameObject lamp = pole.Find("bulb").gameObject;
				Vector3 p = new Vector3(lamp.transform.position.x+Random.Range(-2,2),lamp.transform.position.y-Random.Range(0,15),lamp.transform.position.z+Random.Range(-2,2));
				initPositions[ct] = p;
				xForms[ct] = Instantiate (gClient, p, Quaternion.identity) as GameObject;
				xForms[ct].transform.parent = GameObject.Find("parent/poles").transform;
				Sprite tempClient = spManager.AddSprite (xForms [ct], 1f, 1f, new Vector2 (0f, 7f / 14f), new Vector2 (1f / 14f, 1f / 14f), Vector3.zero, true);
				clients [ct] = tempClient;//spManager.AddSprite (xForms [ct], 1f, 1f, new Vector2 (0f, 7f / 14f), new Vector2 (1f / 14f, 1f / 14f), Vector3.zero, true);
				spManager.SetBillboarded (clients [ct]);
				for (int q = 0; q < 7; q++) {
					UVAnimation tFlap = flaps [q];
					clients [ct].AddAnimation (tFlap);
				}
				clients [ct].PlayAnim ("flap_1");
				ct++;
				lampCount++;
				//				print (i+ " " + j + " " + ct);
			}
		}
		built = true;
	}
	
	// Use this for initialization
	void Start () {
		//		drawAnim ();
	}
	
	// Update is called once per frame
	void Update () {
		
		if (built) {
			counter += 1f / 14f;
			if (counter > 1)
				counter = 0;
			for (int i = 0; i < clients.Length; i++) {
				float a = DoGetSignedAngle (xForms [i], Camera.main.transform);
				//			print (a);
				//			print ("flap_"+Mathf.RoundToInt((a/360)*-7));
				
				if (a < -0 && a > -180) {
					clients [i].SetSizeXY (1f, 1f);
					clients [i].setAnim ("flap_" + Mathf.RoundToInt (1 + ((a) / 180) * -6));
					//				print ("flap_"+Mathf.RoundToInt( 1+ ((a) /180 )*-6));
					
				} else {
					clients [i].SetSizeXY (-1f, 1f);
					clients [i].setAnim ("flap_" + Mathf.RoundToInt (1 + ((((180 + a) / 180) + 1) * -1) * -6));
					
				}
				//			else if(a <= -120 && a > -150) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_2");
				//			}
				//			else if(a <= -150 && a > -180) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_3");
				//			}
				//			else if(a <= -150 && a > -180) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_3");
				//			}
				//			else if(a <= -180 && a > -210) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_4");
				//			}
				//			else if(a <= -210 && a > -240) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_5");
				//			}
				//			else if(a <= -240 && a > -270) {
				//				clients[i].SetSizeXY (1f, 1f);
				//				clients[i].setAnim ("flap_6");
				//			}
				Vector3 p = xForms [i].transform.position;
				float g = Perlin.Noise (p.x, p.z);
				xForms [i].transform.Rotate (noisePos (p));
				xForms [i].transform.Translate (Vector3.forward * .15f);
				float dist = Vector3.Distance(xForms[i].transform.position,initPositions[i]);
				if(dist>1f){
					xForms[i].transform.position = Vector3.MoveTowards(xForms[i].transform.position, initPositions[i],   dist*Time.deltaTime);
				}
				//				xForms[i].GetComponent<SpriteRenderer>().color = new Color(1f,1f,0f);
				float nDist = Remap (dist,1,5,1,0);//(dist-3f)*-1f;
				clients[i].SetColor(new Color(nDist,nDist*.8f,nDist*.2f));
				
				//			xForms[i].transform.Rotate(new Vector3(0f,2f,0f));
				spManager.TransformBillboarded (clients [i]);
			}
		}
		//		print (a);
	}

	float Remap (this float value, float from1, float to1, float from2, float to2) {
		return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}

	
	Vector3 noisePos(Vector3 p){
		float t = Time.frameCount * .21378498333f;
		return new Vector3 (
			.05f-Perlin.Noise (10f*p.x+t,p.y,p.z)*Mathf.PI*10f,
			.05f-Perlin.Noise (10f*p.x,p.y+t,p.z)*Mathf.PI*10f,
			.05f-Perlin.Noise (10f*p.x,p.y,p.z+t)*Mathf.PI*10f
			);
		//		return new Vector3 (
		//			Mathf.Cos (Perlin.Noise (p.x , Time.frameCount*.0333f ) * Mathf.PI * 2f) * .1f,
		//			Mathf.Sin (Perlin.Noise (p.y , Time.frameCount*.0633f ) * Mathf.PI * 2f) * .1f,
		//			Mathf.Cos (Perlin.Noise (p.z , Time.frameCount*.0933f ) * Mathf.PI * 2f) * .1f);
	}
	
	float DoGetSignedAngle(GameObject Client, Transform Cam)
	{
		
		float angle = Quaternion.Angle(Client.transform.rotation, Cam.transform.rotation);
		
		// get a "forward vector" for each rotation
		Vector3 forwardA = Client.transform.rotation * Vector3.forward;
		Vector3 forwardB = Cam.transform.rotation * Vector3.forward;
		
		// get a numeric angle for each vector, on the X-Z plane (relative to world forward)
		float angleA = Mathf.Atan2(forwardA.x, forwardA.z) * Mathf.Rad2Deg;
		float angleB = Mathf.Atan2(forwardB.x, forwardB.z) * Mathf.Rad2Deg;
		
		// get the signed difference in these angles
		float signedAngle = Mathf.DeltaAngle( angleA, angleB );
		
		//		return angle;
		
		//		signedAngle.Value = _signedAngle;
		if (signedAngle <0){
			return signedAngle;
			//			resultNegativeAngle.Value = _signedAngle;
			//			resultPositiveAngle.Value = 360f +_signedAngle;
		}else{
			return -360f+signedAngle;
			//			resultNegativeAngle.Value = -360f+_signedAngle;
			//			resultPositiveAngle.Value = _signedAngle;
		}
		
	}
}
