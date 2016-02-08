using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public static class TREEUtils{

	public static GameObject makePart(Mesh mesh, Material mat){
		GameObject part = new GameObject ();
		MeshFilter m = part.AddComponent<MeshFilter> ();
		MeshRenderer mr = part.AddComponent<MeshRenderer> ();
		m.mesh = mesh;
		mr.sharedMaterial = mat;
		return part;
	}

	public static GameObject JointFactory(Trait t){
		GameObject G = new GameObject ();
		G.name = "joint_"+t.id;
		G.AddComponent<Joint> ();
		Joint J = G.GetComponent<Joint> ();
		J.Construct (t);
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
		for (int i = 0; i < a.Length; i++) {
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
			returner = new GameObject ();
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

			j = findLimbs (branch, j);

			int c = 0;
			if(selector[counter] > j.Length-1){
				c=j.Length-1;
			}
			else
				c=selector[counter];

			GameObject joint = j [c];
			returner = findJoint(selector,counter+2,joint.GetComponent<Joint>().limbs[selector[counter+1]]);
		}
		else{
			returner = findJointOnBranch(branch,selector[counter]);
		}

		return returner;
	}

	public static void test(){
		int[] terms = Enumerable.Range(0, 10).ToArray();
		foreach (int b in terms)
			Debug.Log (b);
	}

	public static void makeList(string range){
		string[] sa = range.Split (new string[] { "," }, System.StringSplitOptions.None);
		List<string[]> ss = new List<string[]> ();
		for(int i = 0 ; i < sa.Length ; i++){
			string[] sf = sa [i].Split (new string[] { ";" }, System.StringSplitOptions.None);
			ss.Add (sf);
			Debug.Log (sf [0]);
		}

	}

//	public static int[] _makeList(int[] range, int[] Stack, int[] StackArray, int Index){
//
//	}

	/*
	 * TREE.prototype.makeList = function(range,Stack,StackArray,Index) {

		var stack = Stack || [];
		var stackArray = StackArray || [];
		var index = Index || 0;

		if(index < range.length){

			var i = index;

			if (range[i] instanceof Array && i!=range.length-1) {
				for (var j = range[i][0] ; j <= range[i][1]; j++) {

					stack.push(j);

					var tempStack = [];

					for(var k = 0 ; k < stack.length ; k++){
						tempStack[k] = stack[k];
					}

					this.makeList(range,tempStack,stackArray,i+1);
					stack.pop();

				}
			}

			else if(range[i] == "all" && index%2 === 0 && index!=range.length-1 ||
				range[i] == -1 && index%2 === 0 && index!=range.length-1){

				var tempStack = [];

				for(var k = 0 ; k < stack.length ; k++){
					tempStack[k] = stack[k];
				}

				tempStack.push(0);

				var jarr = [];
				this._findLimbs(this.findJoint(tempStack),jarr);

				for (var j = 0 ; j < jarr.length ; j++){

					stack.push(j);

					var tempStack = [];

					for(var k = 0 ; k < stack.length ; k++){
						tempStack[k] = stack[k];
					}

					this.makeList(range,tempStack,stackArray,i+1);

					stack.pop();

				}

			}

			else if(range[i] == "all" && index%2!==0 && index!==range.length-1 ||
				range[i] == -1 && index%2!==0 && index!=range.length-1){

				var tempStack = [];

				for(var k = 0 ; k < stack.length ; k++){
					tempStack[k] = stack[k];
				}

				var jarr = [];
				this._findLimbs(this.findJoint(tempStack),jarr);
			
				var limbs = jarr[0].limbs;
			
				for (var j = 0 ; j < limbs.length ; j++){

					stack.push(j);

					var tempStack2 = [];

					for(var k = 0 ; k < stack.length ; k++){
						tempStack2[k] = stack[k];
					}

					this.makeList(range,tempStack2,stackArray,i+1);

					stack.pop();
				}

			}

			else if(range[i] == -2 && index==range.length-1 || 
					range[i] == "all" && index==range.length-1 || 
					range[i] == -1 && index==range.length-1 ||
					range[i] == -3 && index==range.length-1){

				var tempStack = [];

				for(var k = 0 ; k < stack.length ; k++){
					tempStack[k] = stack[k];
				}

				tempStack.push(0);

				var joints = this.findJoint(tempStack).joints;

				var min=0;
				var max = joints+1;

				if(range[i]==-2)
					min=1;

				if(range[i]==-3)
					min=max-1;

				for (var j = min ; j < max ; j++){

					stack.push(j);

					var tempStack = [];

					for(var k = 0 ; k < stack.length ; k++){
						tempStack[k] = stack[k];
					}

					this.makeList(range,tempStack,stackArray,i+1);
					stack.pop();
				}

			}
			else if(range[i] instanceof Array && index==range.length-1){
				var tempStack = [];

				for(var k = 0 ; k < stack.length ; k++){
					tempStack[k] = stack[k];
				}

				tempStack.push(0);

				var min = range[i][0];
				var max = range[i][1];

				var joints = this.findJoint(tempStack).joints;

				if(min>joints+1)
					min=joints+1;
				if(max>joints+1)
					max=joints+1;

				for (var j = min ; j <= max ; j++){

					if(range[i]==-2)
						j++;

					stack.push(j);

					var tempStack = [];

					for(var k = 0 ; k < stack.length ; k++){
						tempStack[k] = stack[k];
					}

					this.makeList(range,tempStack,stackArray,i+1);
					stack.pop();
				}
			}
			else{

				stack.push(range[i]);

				var tempStack = [];

				for(var k = 0 ; k < stack.length ; k++){
					tempStack[k] = stack[k];
				}

				this.makeList(range,tempStack,stackArray,i+1);
				stack.pop();
			}

		}
		else{
			stackArray.push(stack);
		}


		return stackArray;
	};
*/
}
