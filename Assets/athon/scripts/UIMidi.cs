﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIMidi : MonoBehaviour {

	public Slider slider;
	public float[] values;
	public int whichKnob = 0;
	Slider[] sliders;
	public float spacing = 1;
	bool setMin = false;
	Dials d;
	public float mult;

	// Use this for initialization
	void Start () {
		d = Dials.Instance;
		d.checkDials (true);
		sliders = new Slider[9*2*2];
		int j = 0;
		int k = 0;
		float q = 0;
		for (int i = 0; i < 9*2*2; i++) {
			if (i %9==0)
				q += spacing;
			
			sliders[i] = Instantiate (slider);
			sliders[i].transform.parent = slider.transform.parent;
			sliders[i].transform.localPosition = slider.transform.localPosition;
			sliders[i].transform.Translate (new Vector3 (j*spacing+q, k*100, 0));
			sliders[i].maxValue = i+1;
			j++;
			if (j > 17) {
				j = 0;
				k++;
				q = 0;
			}
		}

		values = new float[1000];
	}
	
//	// Update is called once per frame
	void Update () {
		if (!setMin) {
			for (int i = 0; i < 9*2*2; i++) {
				sliders[i].minValue = i;//(float)i + 1f;
				setKnob(sliders[i].value*mult);
			}
			setMin = true;
		}
		for (int i = 0; i < 9*2*2; i++) {
			if(!values[i].Equals(sliders[i].value*mult)){
				setKnob(sliders[i].value*mult);//(float)i + 1f;

			}
		}
		int q = -1;
		for (int i = 0; i < 2; i++) {
			for (int j = 0; j < 9; j++) {
				d.dials [i, j] = values [++q];
				d.knobs [i, j] = values [q+18];

			}
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