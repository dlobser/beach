using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
	public class wormholeEnd : RailsNode
	{
		public GameObject wormhole;
		public GameObject rotator;
		Renderer rend;
		private float counter = 0f;
		public fireworksCtrl fire;

		public float countDown = 10;
		
		protected override void OnIdle()
		{
			countDown -= Time.deltaTime;
//			base.OnIdle ();
			parent.pressable = true;
			if (autoAdvance&&countDown<0) {
				this.GoToNext (0);
			}
		}
		
		protected override void OnRunning()
		{
			
			base.OnRunning();
			counter -= 5 * Time.deltaTime;
			rend.material.SetFloat ("_Trans2", counter);

			if (fire.amount < 1)
				fire.amount += 1 * Time.deltaTime;
			
			if (counter<-3)
			{
//				if (_moveTween == null) {
					wormhole.SetActive (false);
					

//
//				}
//				else
//				{
					if (!_moveTween.IsPlaying())
					{
						this.SwitchToState(NodeState.END);
					}
//				}
			



			}
		}
		
		protected override void OnEnd()
		{
			base.OnEnd();
			mover.transform.position = _goalNode.transform.position;
			if (areRunningAudiosDone) {              
				parent.activeNodes.Remove(this);
				this.SwitchToState(NodeState.IDLE);
			}
		}
		
		
		//SWITCHES
		
		protected override void SwitchToStart()
		{
			float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
			_moveTween = mover.transform.DOMove(_goalNode.transform.position,(moveSpeed*globalSpeed)*dist*.01f).SetEase(Ease.OutCubic);
			rotator.GetComponent<RotateAstronaut> ().enabled = false;
			rotator.transform.DORotate (new Vector3 (0, 180, 0), 0, RotateMode.Fast);
			mover.transform.localEulerAngles = new Vector3 (0, 180, 0);
			rend = wormhole.GetComponent<Renderer> ();
			base.SwitchToStart();
			this.SwitchToState(NodeState.RUNNING);
		}
		
		protected override void SwitchToRunning()
		{
			base.SwitchToRunning();
		}
		
		protected override void SwitchToEnd()
		{
			base.SwitchToEnd();
//			this.endAnimators [0].Stop ();
			
			if (newParent != null) {
				mover.transform.parent = newParent.transform;
			}
			
			parent.activeNodes.Add(_goalNode);
			parent.currentNode = _goalNode;
		}
		
		public override void GoToNext(int index)
		{
			
			if (index < 0 || index >= nextNodes.Length)
			{
				Debug.Log("Index called out of range for Node #" + id);
				return;
			}
			
			_goalNode = nextNodes[index];
			this.parent.currentNode = nextNodes[index];
//			float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
//			_moveTween = mover.transform.DOMove(_goalNode.transform.position,(moveSpeed*globalSpeed)*dist).SetEase(Ease.InOutSine);
			parent.pressable = false;
			
			this.SwitchToState(NodeState.START);
		}
	}
}

