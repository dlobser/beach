using UnityEngine;
using System.Collections;

public class MoveToNode : Interactable {

    GenericHoloNode _node;
    MoveModule _module;
    HoloGraphController _controller;

    public float focusTime = 5f;
    private float _timer = 0f;
    public static float FREEZE = 0f;
	public static bool targeting = false;
	public float freezeTime = 10f;

	// Use this for initialization
	void Start () {
        _node = this.GetComponent<GenericHoloNode>();
        _controller = _node.parent;
        //_module = _node.module as MoveModule;
	}
	
	// Update is called once per frame
	void Update () {


        if (interacting && FREEZE + freezeTime < Time.time)
        {

            Debug.Log("INTERACTING" + " " + FREEZE + " " + _node.id);
            if (_timer == 0f) _timer = Time.time;

            if (Time.time > _timer + focusTime)
            {
                _node.Activate();
                FREEZE = Time.time;
				ScalingReticle.trueTarget();
            }
			ScalingReticle.trueTarget();
		}
        else
        {
			ScalingReticle.falseTarget();
            _timer = 0f;
        }
	}
}
