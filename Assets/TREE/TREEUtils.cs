﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;


public static class TREEUtils{

	public static float testCounter = 0;

	public static GameObject nullGameObject = new GameObject();

	public static GameObject makePart(Mesh mesh, Material mat){
		GameObject part = new GameObject ();
		MeshFilter m = part.AddComponent<MeshFilter> ();
		MeshRenderer mr = part.AddComponent<MeshRenderer> ();
		m.mesh = mesh;
		mr.sharedMaterial = mat;
		return part;
	}

	public static float Noise(float t){
		return .499f- Mathf.PerlinNoise (t, t);
	}

	public static GameObject JointFactory(Trait t){
		GameObject G = new GameObject ();
		G.name = "joint_"+t.id;
		G.AddComponent<Joint> ();
		Joint J = G.GetComponent<Joint> ();
		J.Construct (t);
		J.joint = t.id;
		return G;
	}

	public static void copyTransforms(GameObject a, GameObject b){
		a.transform.position = b.transform.position;
		a.transform.rotation = b.transform.rotation;
		a.transform.localScale = b.transform.localScale;
	}

	public static void zeroTransforms(GameObject a){
		a.transform.localPosition =Vector3.zero;
		a.transform.rotation = Quaternion.identity;
		a.transform.localScale = Vector3.one;
	}

	public static int[] intPush(int[] a, int b){
		int[] newArray = new int[a.Length + 1];
		for (int i = 0; i < a.Length; i++) {
			newArray[i] = a[i];
		}
		newArray [newArray.Length - 1] = b;
		a = newArray;
		return a;
	}


	public static int[] intPop(int[] a){
		int[] newArray = new int[a.Length -1];
		for (int i = 0; i < newArray.Length; i++) {
			newArray[i] = a[i];
		}
		a = newArray;
		return a;
	}


	public static GameObject[] appendToGameObjectArray(GameObject[] a, GameObject b){
		GameObject[] newArray = new GameObject[a.Length + 1];
		for (int i = 0; i < a.Length; i++) {
			newArray[i] = a[i];
		}
		newArray [newArray.Length - 1] = b;
		a = newArray;
		return a;
	}


	public static float[] stringToFloatArray(string s){
		string[] sa = s.Split (new string[] { "," }, System.StringSplitOptions.None);
		float[] f = new float[sa.Length];
		for(int i = 0 ; i < sa.Length ; i++){
			f [i] = float.Parse (sa [i]);
		}
		return f;
	}

	public static void mergeArrays(float[] a, float[] b){
		for (int i = 0; i < b.Length; i++) {
			if (i < a.Length)
				b [i] = a [i];
			else
				b [i] = a [a.Length - 1];
		}
	}

	public static void fillArray(float a, float[] b){
		for (int i = 0; i < b.Length; i++) {
			b [i] = a;
		}
	}

	public static GameObject findJointOnBranch(GameObject obj, int num){

		GameObject returner;


		if (obj) {
			if (num > obj.GetComponent<Joint> ().joints + 1)
				num = obj.GetComponent<Joint> ().joints + 1;
			if (num > 0) {
				returner = findJointOnBranch (obj.GetComponent<Joint> ().childJoint, --num);
			} else
				returner = obj;
		} else {
			Debug.Log ("empty");
			returner = null;//new GameObject ();
		}
		return returner;
	}

	//fills an array with a list of the joints that branch from a limb

	public static GameObject[] findLimbs(GameObject branch, GameObject[] array){
		if(branch){
			if(branch.GetComponent<Joint>().limbs.Count>0){
				array = appendToGameObjectArray (array, branch);
			}
			if(branch.GetComponent<Joint>().childJoint){
				array = findLimbs (branch.GetComponent<Joint> ().childJoint, array);
			}
		}
		return array;
	}

	public static void makeChildList(GameObject container, List<GameObject> checkList){

		for (int i = 0; i < container.transform.childCount; i++) {
			Transform go = container.transform.GetChild (i);
			checkList.Add (go.gameObject);
			if (go.transform.childCount > 0)
				makeChildList (go.gameObject, checkList);
		}

	}


	public static GameObject findJoint(int[] selector, int counter, GameObject branch){

		GameObject returner;

		if (counter < selector.Length - 1) {

			GameObject[] j = new GameObject[0];

//			Debug.Log (branch);
			j = findLimbs (branch, j);

			int c = 0;

			if(selector[counter] > j.Length-1){
				c= Mathf.Max(0,j.Length-1);
			}
			else
				c=selector[counter];

//			Debug.Log (j.Length);
//			Debug.Log (c);
			if (j.Length > 0) {
				GameObject joint = j [c];
//			Debug.Log (joint);
				returner = findJoint (selector, counter + 2, joint.GetComponent<Joint> ().limbs [selector [counter + 1]]);
			} else
				return null;
		}
		else{
//			Debug.Log (branch.GetComponent<Joint>());
			returner = findJointOnBranch(branch,selector[counter]);
		}

		return returner;
	}

	public static void test(){
		int[] terms = Enumerable.Range(0, 10).ToArray();
		foreach (int b in terms)
			Debug.Log (b);
	}

	public static List<int[]> makeList(string input, TREE tree){
			
		string[] sa = input.Split (new string[] { "|" }, System.StringSplitOptions.None);

		List<int[]> range = new List<int[]> ();

		for (int i = 0; i < sa.Length; i++) {
			string[] na = sa[i].Split (new string[] { "," }, System.StringSplitOptions.None);
			if (na.Length == 1) {
				int[] toAdd = new int[1];
				toAdd [0] = int.Parse (na [0]);
				range.Add (toAdd);
			} else {
				int a = int.Parse (na [1]);
				int b = int.Parse (na [0]);
				int[] toAdd = new int[2];
				toAdd [0] = b;
				toAdd [1] = a;
				range.Add (toAdd);
			}
		}
			
		int[] Stack = new int[0];
		List<int[]> StackArray = new List<int[]> ();
		int index = 0;

		return _makeList (range, Stack, StackArray, index, tree);

	}


	public static List<int[]> _makeList(List<int[]> range, int[] stack, List<int[]> stackArray, int Index, TREE tree){

		testCounter += Time.deltaTime;

		if (Index < range.Count) {

			int i = Index;

			if (range [i].Length > 1 && i != range.Count - 1) {
				for (int j = range [i] [0]; j <= range [i] [range [i].Length-1]; j++) {
					stack = intPush (stack, j);
					int[] tempStack = makeTempStack (stack);
					_makeList (range, tempStack, stackArray, i + 1, tree);
					stack = intPop (stack);
				}
			}

			else if(range[i][0] == -1 && i % 2 == 0 && i != range.Count-1){

				int[] tempStack = makeTempStack (stack);
				tempStack = intPush (tempStack, 0);

				GameObject[] jarr = new GameObject[0];
				GameObject g = findJoint (tempStack, 0, tree.transform.GetChild(0).gameObject);
				jarr = findLimbs(g,jarr);

				for (int j = 0 ; j < jarr.Length ; j++){
					
					stack = intPush (stack, j);
					tempStack = makeTempStack (stack);
					_makeList (range, tempStack, stackArray, i + 1, tree);
					stack = intPop (stack);

				}
			}

			else if(range[i][0] == -1 && i%2!=0 && i!=range.Count-1){

				int[] tempStack = makeTempStack (stack);

				GameObject[] jarr = new GameObject[0];
				GameObject g = findJoint (tempStack, 0, tree.transform.GetChild(0).gameObject);
				jarr = findLimbs(g,jarr);

				List<GameObject> limbs = jarr[0].GetComponent<Joint>().limbs;

				for (int j = 0 ; j < limbs.Count ; j++){

					stack = intPush (stack, j);
					int[] tempStack2 = makeTempStack (stack);
					_makeList (range, tempStack2, stackArray, i + 1, tree);
					stack = intPop (stack);
				}
			}
				
			else if(range[i][0] == -2 && i==range.Count-1 || 
				    range[i][0] == -1 && i==range.Count-1 ||
				    range[i][0] == -3 && i==range.Count-1){

				int[] tempStack = makeTempStack (stack);

				tempStack = intPush (tempStack, 0);

				GameObject g = findJoint (tempStack, 0, tree.transform.GetChild (0).gameObject);
				int joints = g.gameObject.GetComponent<Joint> ().joints;

				int min = 0;
				int max = joints+1;

				if(range[i][0] == -2)
					min=1;

				if(range[i][0] == -3)
					min=max-1;

				for (var j = min ; j < max ; j++){

					stack = intPush (stack, j);
					tempStack = makeTempStack (stack);
					for(var k = 0 ; k < stack.Length ; k++){
						tempStack[k] = stack[k];
					}

					_makeList (range, tempStack, stackArray, i + 1, tree);
					stack = intPop (stack);
				}

			}

			else if(i==range.Count-1){

				int[] tempStack = makeTempStack (stack);

				tempStack = intPush (tempStack, 0);

				int min = range[i][0];
				int max = range[i][1];

				GameObject g = findJoint (tempStack, 0, tree.transform.GetChild (0).gameObject);
				int joints = g.gameObject.GetComponent<Joint> ().joints;

				if(min>joints+1)
					min=joints+1;
				if(max>joints+1)
					max=joints+1;

				for (int j = min ; j <= max ; j++){

					if(range[i][0]==-2)
						j++;

					stack = intPush (stack, j);

					tempStack = makeTempStack (stack);

					_makeList (range, tempStack, stackArray, i + 1, tree);
					stack = intPop (stack);
				}
			}
			else {

				stack = intPush (stack, range [i] [0]);

				int[] tempStack = makeTempStack (stack);

				_makeList (range, stack, stackArray, i + 1, tree);
				stack = intPop (stack);
			}
		} else {
			stackArray.Add (stack);
		}
//		string s = "";
//
//		for (int i = 0; i < stackArray.Count; i++) {
//			s += "FF";
//			for (int j = 0; j < stackArray[i].Length; j++) {
//				s+=","+stackArray [i][ j];
//			}
//		}
//		Debug.Log (s);
//		Debug.Log ("\n");

		return stackArray;
	}

	public static int[] makeTempStack (int[] stack){
		return stack.Clone () as int[];// tempStack;
	}

	public static void appendBranch(GameObject obj){

	}

	public static void makeDictionary(GameObject joint){

		List<int> stack = new List<int> ();
		List<List<int>> stackArray = new List<List<int>> ();
		int pusher = 0;

		makeDictionary (joint, stack, stackArray, pusher);

	}

	public static void makeDictionary(GameObject joint, List<int> stack, List<List<int>> stackArray, int pusher){

		stack.Add (pusher);

		for (int i = 0; i < joint.GetComponent<Joint> ().limbs.Count; i++) {

			stack.Add (i);

			int[] tempStack = stack.ToArray ();

			GameObject[] jarr = new GameObject[0];
			GameObject g = findJoint (tempStack, 0, joint.transform.GetChild(0).gameObject);
			jarr = findLimbs(g,jarr);

			List<GameObject> limbs = jarr[0].GetComponent<Joint>().limbs;

			List<int> tempStack2 = new List<int> (stack);
			List<int> t2 = new List<int> (stack);

			stackArray.Add (tempStack2);

			t2.Add (-1);
			List<int[]> t3 = makeList ( listToString(t2), joint.GetComponent<TREE> ());

			for (int k = 0; k < t3.Count; k++) {
				string tempString = arrayToString (t3 [k]);
				GameObject tempJoint = findJoint (t3[k], 0, joint);
				tempJoint.GetComponent<Joint> ().dictionaryName = t3[k];
			}

			for(var j = 0 ; j < jarr.Length ; j++){
				makeDictionary(jarr[j], tempStack2, stackArray, j);
			}

			stack.RemoveAt(stack.Count-1);

//	
//			for (int j = 0 ; j < limbs.Count ; j++){
//
//				stack = intPush (stack, j);
//				int[] tempStack2 = makeTempStack (stack);
//				_makeList (range, tempStack2, stackArray, i + 1, tree);
//				stack = intPop (stack);
//			}

		}
		stack.RemoveAt(stack.Count-1);
	}

	/*
	TREE.prototype.makeDictionary = function(obj,stacker,stackArray,pusher){

		var joint = obj || this;
		var stack = stacker || [];
		var stackArray = stackArray || [];
		var pusher = pusher || 0;

		stack.push(pusher);

		for(var i = 0 ; i < joint.limbs.length ; i++){

			stack.push(i);

			var jarr = [];
			this.findLimbs(joint.limbs[i],jarr);

			var tempStack = [];
			var t2 = [];

			for(var k = 0 ; k < stack.length ; k++){
				tempStack[k] = stack[k];
				t2[k] = stack[k];
			}

			stackArray.push(tempStack);

			t2.push("all");
			var t3 = this.makeList(t2);
			var t4 = t3;//this.makeList(t3[0]);

			for(var k = 0 ; k < t4.length ; k++){
				var tempString = t4[k].toString();
				var tempJoint = this.FIND(t4[k]);
				this.parts[tempString] = tempJoint;
				tempJoint.dictionaryName = tempString;
				// console.log(tempString);
				// console.log(joint.id);
			}

			for(var j = 0 ; j < jarr.length ; j++){
				this.makeDictionary(jarr[j],tempStack,stackArray,j	);
			}

			stack.pop();

		}

		stack.pop();

		return stackArray;
	}
		*/


	public static string arrayToString(int[] jointList){
		string s = "";
		for (int i = 0; i < jointList.Length; i++) {
			s += jointList [i].ToString ();
			if (i < jointList.Length - 1)
				s += "|";
		}
		return s;
	}

	public static string listToString(List<int> jointList){
		string s = "";
		for (int i = 0; i < jointList.Count; i++) {
			s += jointList [i].ToString ();
			if (i < jointList.Count - 1)
				s += "|";
		}
		return s;
	}



//	public static void appendBranch(GameObject obj, Vector3 rotate, float scale){
//
//	}

	/*
	TREE.prototype.appendBranch = function(obj,args){

		if(!args) args = {};

		var amt = args.amount || 10;

		var x = args.rx || 0;
		var y = args.ry || 0;
		var z = args.rz || 1;

		if(args.rz===0)
			z=0;

		var sc = args.sc || 1;

		//making a tempTree to get access to the 'branch' function
		var tempTree = new TREE();

		var tempRoot = new Joint(tempTree.params);
		var altLength = tempRoot.params.jointScale.clone();
		altLength.y = sc;
		tempRoot.construct();

		var root = tempTree.branch(amt,obj,{jointScale:altLength});

		var posY = args.ty || root.parent.parent.params.jointScale.y;	

		root.position.y=posY;

		root.rotator.rotation.x = x;
		root.rotator.rotation.y = y;
		root.rotator.rotation.z = z;

		return root;
	}
	*/
		

}
