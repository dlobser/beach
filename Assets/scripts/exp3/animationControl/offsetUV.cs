using UnityEngine;
using System.Collections;


namespace exp3{
//	[ExecuteInEditMode]
	public class offsetUV : MonoBehaviour {

		public Vector2 UVoffset;
		Mesh _mesh;
		Vector2[] origUVs;
		Vector2[] newUVs;

		void Start () {
			_mesh = GetComponent<MeshFilter>().mesh;
			origUVs = new Vector2[_mesh.uv.Length];
			newUVs = new Vector2[_mesh.uv.Length];
			for (int i = 0; i < _mesh.uv.Length; i++) {
				origUVs[i] = _mesh.uv[i];
				newUVs[i] = _mesh.uv[i];
			}
		}
		
		void Update () {
//			print (newUVs.Length);
			for (int i = 0; i < newUVs.Length; i++) {
				newUVs[i] = origUVs[i]+UVoffset;
			}
			_mesh.uv = newUVs;
		}
	}
}
