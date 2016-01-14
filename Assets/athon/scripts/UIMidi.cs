using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIMidi : MonoBehaviour {

	public Slider slider;
	public float[] values;
	public int whichKnob = 0;
	Slider[] sliders;
	public float spacing = 1;
	bool setMin = false;

	// Use this for initialization
	void Start () {
		sliders = new Slider[10];
		for (int i = 0; i < 10; i++) {
			sliders[i] = Instantiate (slider);
			sliders[i].transform.parent = slider.transform.parent;
			sliders[i].transform.localPosition = slider.transform.localPosition;
			sliders[i].transform.Translate (new Vector3 (i*spacing, 0, 0));
			sliders[i].maxValue = i+1;
		}

		values = new float[1000];
	}
	
//	// Update is called once per frame
	void Update () {
		if (!setMin) {
			for (int i = 0; i < 10; i++) {
				sliders[i].minValue = i;//(float)i + 1f;
				print(sliders[i].minValue);
			}
			setMin = true;
		}
		for (int i = 0; i < 10; i++) {
			setKnob(sliders[i].value);//(float)i + 1f;
		}
	}

	public void setWhichKnob(float j){
		whichKnob = (int)Mathf.Floor (j);
	}
	public void setKnob(float j){
		setWhichKnob (Mathf.Floor (j));
		values [whichKnob] = (Mathf.Floor (j)-j)*10;
	}

	public float GetKnob(int i){
		return values [i];
	}
}
