using UnityEngine;
using System.Collections;

public class RotateAstronaut : MonoBehaviour {
	
	public Transform goal;
	public float rotateSpeed;
	public Vector3 deadSpaceBounds;
	public float deadSpaceTime = 1f;
	public float returnToDeadSpace = 25;
	
	private float _timer = 0f;
	private bool updatingGoal = false;
	private Transform _originalParent;
	
	private Vector3 lastSavedRotation;
	
	private float speedUp = 0;
	
	void Start()
	{
		_originalParent = goal.parent;
	}
	
	void Update () {
		
		Vector3 gv = this.transform.localEulerAngles + goal.transform.localEulerAngles;
		gv.x = 0;
		gv.z = 0;
		
		if (gv.y > 180) gv.y -= 360f;
		
		if (updatingGoal)
		{
			if(speedUp<1)
				speedUp+=Time.deltaTime;
			
			this.transform.localRotation = Quaternion.Lerp(this.transform.localRotation, Quaternion.Euler(gv), Time.deltaTime * rotateSpeed * speedUp);
			
			float lry = (this.transform.localRotation.eulerAngles.y);
			if (lry > 180) lry -= 360f;
			
			if ((Mathf.Abs(gv.y - lry)) % 360f < returnToDeadSpace)
			{
				updatingGoal = false;
				lastSavedRotation = this.transform.localEulerAngles;
			}
		}
		else
		{
			if(speedUp>0)
				speedUp-=Time.deltaTime;
			
			Vector3 qr = this.transform.localEulerAngles;
			qr.y = gv.y;
			
			goal.transform.parent = null;
			//this.transform.localRotation = Quaternion.Lerp(this.transform.localRotation, Quaternion.Euler(qr), Time.deltaTime * rotateSpeed);
			goal.transform.parent = _originalParent;
			
			float lry = (lastSavedRotation.y);
			if (lry > 180) lry -= 360f;
			
			
			if ((Mathf.Abs(gv.y - lry)) % 360f > deadSpaceBounds.y)
			{
				_timer += Time.deltaTime;
				
				if (_timer > deadSpaceTime)
				{
					_timer = 0;
					updatingGoal = true;
				}
			}
			else
			{
				_timer = 0;
			}
		}
	}
}
