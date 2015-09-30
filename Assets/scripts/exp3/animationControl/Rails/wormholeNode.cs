using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
	public class wormholeNode : RailsNode
	{
		public GameObject wormhole;
		public RotateAstronaut podRotator;
		Renderer rend;
		private float counter = 1f;

		protected override void OnIdle()
		{
			base.OnIdle ();
			if (autoAdvance) {
				this.GoToNext (0);
			}
		}

		
		protected override void OnRunning()
		{
			
			base.OnRunning();
			counter -= 3.5f * Time.deltaTime;
			rend.material.SetFloat ("_Trans", counter);


			
			if (counter<-5)
			{
				this.runningAnimators [0].enabled = false;
				this.SwitchToState(NodeState.END);
			}
		}
		
		protected override void OnEnd()
		{
			base.OnEnd();
			mover.transform.position = _goalNode.transform.position;
//			mover.transform.rotation = Quaternion.identity;


			if (areRunningAudiosDone) {              
				parent.activeNodes.Remove(this);
				this.SwitchToState(NodeState.IDLE);
			}
		}
		
		
		//SWITCHES
		
		protected override void SwitchToStart()
		{

			wormhole.SetActive (true);
			rend = wormhole.GetComponent<Renderer> ();
			podRotator.rotateSpeed = .1f;
			base.SwitchToStart();
			this.SwitchToState(NodeState.RUNNING);
		}
		
		protected override void SwitchToRunning()
		{
//			base.SwitchToRunning();
			for (int i = 0; i < runningAudios.Length; i++)
			{
				runningAudios[i].Stop();
				runningAudios[i].volume = 0f;
			}

		}
		
		protected override void SwitchToEnd()
		{
			base.SwitchToEnd();
			
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

