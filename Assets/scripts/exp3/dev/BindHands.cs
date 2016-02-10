using UnityEngine;
using System.Collections;

public class BindHands : MonoBehaviour {

    Animator _animator;

    public GameObject leftHandGoal;
    public GameObject rightHandGoal;

	void Start () {
        _animator = this.GetComponent<Animator>();
        
	}

	// Update is called once per frame
	void OnAnimatorIK(int layerIndex) {
        Debug.Log("OnAnimatorIK");
        _animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, 1f);
        _animator.SetIKPosition(AvatarIKGoal.LeftHand, leftHandGoal.transform.position);
        _animator.SetIKPositionWeight(AvatarIKGoal.RightHand, 1f);
        _animator.SetIKPosition(AvatarIKGoal.RightHand, rightHandGoal.transform.position);

	}
}
