using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
	public class endNode : RailsNode
	{

		public bool restartModeTesting = true;

		
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
			
			if (!_moveTween.IsPlaying())
			{
				this.SwitchToState(NodeState.END);
			}
		}
		
		protected override void OnEnd()
		{
			base.OnEnd();
			if (areRunningAudiosDone) {              
				parent.activeNodes.Remove(this);
				this.SwitchToState(NodeState.IDLE);
			}
		}
		
		
		//SWITCHES
		
		protected override void SwitchToStart()
		{
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
			
			if (newParent != null) {
				mover.transform.parent = newParent.transform;
			}
			
			parent.activeNodes.Add(_goalNode);
			parent.currentNode = _goalNode;
		}
		
		public override void GoToNext(int index)
		{
//			if(restartModeTesting)
				Application.LoadLevel (0);
//			else
//				App.AppController.Instance.HitBackButton();

		}
	}
}

