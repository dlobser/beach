using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
	public class RailsNodeRollerCoaster : RailsNode
	{
		
		//private RailsNode _goalNode;
	

		private bool doneAnimating = false;
		private bool doneAnimating2 = false;
		private bool doneAnimating3 = false;

		public void animationFinished(){
			doneAnimating = true;
		}
		
		protected override void OnIdle()
		{
			parent.pressable = true;
		}
		
		
		protected override void OnRunning()
		{
			
			for (int i = 0; i < runningAudios.Length; i++)
			{
				if (runningAudios[i].volume < 1f)
					runningAudios[i].volume += audioFadeInSpeed;
			}
			if(doneAnimating&&transform.parent.GetComponent<Animator> ().GetCurrentAnimatorStateInfo (0).IsName("Take 001")){
				doneAnimating2 = true;
//				
			}
			if(doneAnimating2&&!transform.parent.GetComponent<Animator> ().GetCurrentAnimatorStateInfo (0).IsName("Take 001")){
//				doneAnimating2 = true;
//				Animator a = transform.parent.GetComponent<Animator> ();
//				a.SetBool ("roll", false);
//				this.SwitchToState(NodeState.END);
				if(!doneAnimating3){
					Animator a = transform.parent.GetComponent<Animator> ();
					a.SetBool ("roll", false);
					mover.transform.parent = newParent.transform;
					
					//			nextNodes[0]. GoToNext (0);
					
					_goalNode = nextNodes[0];
					float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
					_moveTween = mover.transform.DOMove(_goalNode.transform.position,(moveSpeed*globalSpeed)*dist*22.01f).SetEase(Ease.InOutSine);
					parent.pressable = false;
					doneAnimating3 = true;
				}
				if (!_moveTween.IsPlaying ()) {
					print ("yo");
					this.SwitchToState (NodeState.END);
				}
//				this.SwitchToState(NodeState.END);

			}
//			print ("done:" + doneAnimating2 + "playing" + moveCheck==null);
//			if (moveCheck != null) {
//
//			}
		}
		
		protected override void OnEnd()
		{
			bool done = true;
			for (int i = 0; i < runningAudios.Length; i++)
			{
				if (runningAudios[i].volume > 0)
				{
					runningAudios[i].volume -= audioFadeOutSpeed;
					done = false;
				} else {
					runningAudios[i].Stop();
				}
			}
			
			if (done) {              
				parent.activeNodes.Remove(this);
				this.SwitchToState(NodeState.IDLE);
			}
		}
		
		
		//SWITCHES
		
		protected override void SwitchToStart()
		{
			for (int i = 0; i < startAudios.Length; i++)
			{
				startAudios[i].Play();
			}

			Animator a = transform.parent.GetComponent<Animator> ();
			a.SetBool ("roll", true);
			doneAnimating = true;
			print (transform.parent.GetComponent<Animator> ().GetCurrentAnimatorStateInfo (0).IsName ("Take 001"));
			this.SwitchToState(NodeState.RUNNING);
			
			
		}
		
		protected override void SwitchToRunning()
		{
			for (int i = 0; i < runningAudios.Length; i++)
			{
				runningAudios[i].Play();
				runningAudios[i].volume = 0f;
			}
		}
		
		protected override void SwitchToEnd()
		{
			for (int i = 0; i < endAudios.Length; i++)
			{
				endAudios[i].Play();
			}
			
			if (newParent != null) {
				mover.transform.parent = newParent.transform;
			}
		
			parent.activeNodes.Add(_goalNode);
			parent.currentNode = _goalNode;
		}
		
		public override void GoToNext(int index)
		{
			
//			if (index < 0 || index >= nextNodes.Length)
//			{
//				Debug.Log("Index out of range for Node #" + id);
//				return;
//			}
//			
//			_goalNode = nextNodes[index];
//			float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
//			moveCheck = mover.transform.DOMove(_goalNode.transform.position,(moveSpeed*globalSpeed)*dist).SetEase(Ease.InOutSine);
			parent.pressable = false;
//			
			this.SwitchToState(NodeState.START);
		}
	}
}

