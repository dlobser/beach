using UnityEngine;
using System.Collections;
using DG.Tweening;

public class moveForward : MonoBehaviour {

	public float speed;
	public Vector3 end = Vector3.zero;
	// Use this for initialization
	void Start () {
		transform.DOMove (end, speed,false).SetEase(Ease.InOutSine);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
