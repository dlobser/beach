using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public static class strokeUtils {

	public static Vector3[] listToArray(List<Vector3> l, int k, int j){
		Vector3[] returner;
		returner = new Vector3[j-k];
		for(int i = k ; i < j ; i++){
			returner [i] = l [i];
		}
		return returner;
	}

	public static Vector3[] getArrayPortion(Vector3[] vecs, int k, int j){
		Vector3[] returner;
		returner = new Vector3[j-k];
		for(int i = k ; i < j ; i++){
			returner [i] = vecs[i];
		}
		return returner;
	}

	public static void shiftArray(Vector3[] vecs, int head){

		for (int i = 0; i < head; i++) {
			vecs [i] = vecs [i + 1];
		}
	}



	public static void clearStrokes(List<GameObject> strokes){

		for(int i = 0 ; i < strokes.Count ; i++){
			GameObject.Destroy(strokes[i]);
		}
		strokes.Clear ();
	}

	public static void addToTrail(Vector3[] vecs, int head, Vector3 val){
		vecs [head] = val;
	}
}
