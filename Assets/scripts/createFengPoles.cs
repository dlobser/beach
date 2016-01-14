using UnityEngine;
using System.Collections;

public class createFengPoles : MonoBehaviour {

	public Transform light;
	public GameObject lampLight;
	public GameObject[] poleGroup;
	public Material lampMat;
	private Transform pole;
	public int poleAmount;
	public Transform polePositions;
	public float lightPercent = 30;
	Transform[] poles;
	public Transform line;
	Transform[] lines;
	public AudioClip[] tone;
	public bool builtOnSphere = false;

	private AudioSource audioChecker;

	int volumeUp = 0;
	void Awake(){
		AudioListener.volume = 0;
	}
	// Use this for initialization
	void Start () {

//		audio.volume = 0;

		float posX = 0f;
		float posY = 0f;
		float rotY = 0f;

		int i = 1;
		Transform[] poleRoots;
		poleRoots = polePositions.GetComponentsInChildren<Transform>();

		if (poleRoots.Length > 1)
			poleAmount = poleRoots.Length;

		poles = new Transform[poleAmount];
		lines = new Transform[poleAmount*4];
		ArrayList polesWithLights = new ArrayList();

		GameObject poleParent = GameObject.Find("parent/poles");
		int audioCounter = (int) Random.Range(1,tone.Length-1);
		if (audioCounter > tone.Length - 1)
			audioCounter = 1;
		print (audioCounter);

		while (i < poleAmount) {

			int polePick = (int)Random.Range(0,poleGroup.Length);
//			print (polePick);

			Transform pole = poleGroup[polePick].transform;

//			print (poleRoots.Length);

			if(poleRoots.Length>1)
				poles[i] = Instantiate(pole, poleRoots[i].position, poleRoots[i].rotation) as Transform;
			else
				poles[i] = Instantiate(pole, new Vector3(posX, 0, posY), new Quaternion(Random.Range (-10,10),rotY,0,Random.Range(-180,180))) as Transform;

//			poles[i].GetComponent<switchLevel>().fader = this.fader;

			poles[i].transform.parent = poleParent.transform;//GameObject.Find("parent/poles").transform;

			posX-=Random.Range (-50,50);
			posY+=Random.Range (-17,30);
			rotY+=Random.Range (-180,180);

//			print (poles[i]);

//			GameObject lamp = poles[i].Find("lamp").gameObject;
//			print (poles[i].GetChild(0));
			GameObject bulb = poles[i].FindChild("bulb").gameObject;
			GameObject glass = poles[i].FindChild("glass").gameObject;
			GameObject stalk = poles[i].FindChild("stalk").gameObject;
		

			glass.GetComponent<Renderer>().material = lampMat;//Shader.Find("whiteGlow");
			bool makeLight = false;

			if(poleRoots.Length>0){
				if(poleRoots[i].localScale.y > 21)
					makeLight = true;
			}
			else{
				if(Random.Range(0,100)>lightPercent){
					makeLight=true;
				}
			}

			if(!makeLight){
				bulb.GetComponent<Renderer>().enabled = false;
				glass.GetComponent<Renderer>().enabled = false;
				stalk.GetComponent<Renderer>().enabled = false;
//				lamp.transform.localScale = new Vector3(.01f,.01f,.01f);
//				bulb.GetComponent<AudioSource>().volume = 0;
			}
			else{
				polesWithLights.Add(poles[i]);
//				bulb.GetComponent<AudioSource>().pitch = Random.Range(.5f,2f);
//				bulb.GetComponent<AudioSource>().volume = 0;
				Transform lgt = Instantiate(light, bulb.transform.position, poles[i].transform.rotation) as Transform;
				lgt.transform.Rotate(new Vector3(90,0,0));
				lgt.transform.parent = GameObject.Find("parent/poles").transform;
				glass.AddComponent<SphereCollider>();
				SphereCollider sph = glass.GetComponent<SphereCollider>();
				sph.isTrigger = true;
//				glass.AddComponent<AudioSource>();
//				AudioSource aud = glass.GetComponent<AudioSource>();
//				aud.clip = tone;
//				aud.playOnAwake = false;
//				aud.volume = 0;
//				aud.loop = true;
//				aud.pitch = Random.Range(.6f,1.2f);
				GameObject lampLgt = Instantiate(lampLight, bulb.transform.position, poles[i].transform.rotation) as GameObject;
				lampLgt.transform.parent = GameObject.Find("parent/poles").transform;
				lampLgt.transform.Rotate(new Vector3(90f,0f,0f));
				lampLgt.transform.Translate(new Vector3(0,0,.51f));

			}
			glass.AddComponent<AudioSource>();
			AudioSource aud = glass.GetComponent<AudioSource>();
			aud.maxDistance = 50;
			aud.minDistance = 1;
			aud.spatialBlend = 1;
//			aud.rolloffMode = AudioRolloffMode.Logarithmic;
			aud.dopplerLevel = 1.5f;
			if(!makeLight){
				aud.spatialBlend = 1;
				aud.rolloffMode = AudioRolloffMode.Linear;
				aud.clip = tone[0];
				aud.pitch = Random.Range(.6f,1.2f);
				aud.volume = .1f;
			}
			else{
				aud.spatialBlend = 1;
				aud.rolloffMode = AudioRolloffMode.Linear;
				aud.clip = tone[audioCounter];
				aud.maxDistance = 60;
				aud.volume = .2f;
				audioCounter+=1;//(int)Random.Range(1,4);
			}

			if(audioCounter>tone.Length-1)
				audioCounter=1;
			aud.playOnAwake = false;
//			aud.volume = 0;
			aud.loop = true;

//			print (audioCounter);
			i++;
		}
//		separatePoles ();
		makeLines ();
		audioChecker = poles [1].Find ("glass").gameObject.GetComponent<AudioSource> ();
		makeStatic (poleParent);
		poleParent.isStatic = true;
		GameObject.Find("makeMoths").SendMessage("drawAnim",polesWithLights);
	
	}

	void separatePoles(){
		for (int i = 0; i < 10; i++) {
			for(int j = 2 ; j < poleAmount ; j++){

				Transform thisPole = poles[j];

				for(int k = 1 ; k < poleAmount ; k++){

					if(Vector3.Distance(thisPole.transform.position,poles[k].transform.position)<25){

						Vector3 newPos = thisPole.transform.position - poles[k].transform.position;
						newPos.Normalize();
//						print (thisPole.transform.position);
						thisPole.transform.position += newPos*10;
//						thisPole.transform.position = Vector3.Lerp(poles[j].transform.position
//						                                           position = transform.position;
//						                                           targetPosition = target.position;
//						                                           direction = targetPosition - position;
//						                                           distance = direction.magnitude;
//						                                           direction.Normalize();
//						                                           target.position += direction * moveSpeed * Time.deltaTime;
					}
				}
			}
		}
	}

	void makeLines(){

		for (int i  = 2; i < poleAmount; i++) {

			Transform[] tLines = new Transform[4];
		
			for (int j = 0; j < 4; j++) {
			
				int which = j + 1;
			
				GameObject hook = poles [i].Find ("hook_" + which).gameObject;
				Vector3 hookPos = hook.transform.position;
				//					print (hookPos);
			
				tLines [j] = Instantiate (line, new Vector3 (0, 0, 0), Quaternion.identity) as Transform;
				tLines [j].transform.parent = GameObject.Find ("parent/poles").transform;
				//					GameObject lineRoot = tLines[j].Find("wire/line_1/aim").gameObject;
				//					GameObject lineTarget = tLines[j].Find("wire/line_1/aim/target").gameObject;
			
				tLines [j].transform.position = hook.transform.position;
				//					lineRoot.transform.position = hook.transform.position;
			
			
				string dir = "hook_" + which;
				//					print (dir);
				GameObject prevHook = poles [i - 1].Find (dir).gameObject;
			
				if (builtOnSphere) {
					Vector3 UP = Vector3.Lerp (Vector3.zero, tLines [j].transform.position, 2f);
					tLines [j].transform.up = UP;
					tLines [j].transform.LookAt (prevHook.transform.position, UP);
					print (builtOnSphere);
				} else
					tLines [j].transform.LookAt (prevHook.transform.position);
			
				float dist = Vector3.Distance (tLines [j].transform.position, prevHook.transform.position);
				//					print(dist);
				tLines [j].transform.localScale = new Vector3 (1, 1, dist);
				tLines [j].gameObject.isStatic = true;
				//					lineTarget.transform.localPosition = new Vector3(0,0,dist);
			}

		}
	}
	void makeStatic (GameObject G){
		G.isStatic = true;
		for(int i = 0 ; i < G.transform.childCount ; i++){
			Transform child = G.transform.GetChild(i);
			makeStatic (child.gameObject);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (AudioListener.volume < 1)
			AudioListener.volume += .01f;
//		if(audioChecker.volume<.35){
		if (volumeUp < 400) {
			for(int i = 1 ; i < poles.Length ;i++){
				GameObject glass = poles[i].Find("glass").gameObject;
				AudioSource aud = glass.GetComponent<AudioSource>();
//				print (glass.GetComponent<AudioSource>());
//				GameObject bulb = poles [i].Find ("lamp/bulb").gameObject;
				if(aud != null){
//					print (aud.volume);
//					print (volumeUp);
					if(!aud.isPlaying)
						aud.Play();
//					if (aud.volume < .35f)
//						aud.volume += .01f;
				}

				volumeUp++;
			}
		}
	
	}
}
