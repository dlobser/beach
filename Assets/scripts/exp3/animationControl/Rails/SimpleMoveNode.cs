using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
    public class SimpleMoveNode : RailsNode
    {

		protected override void OnIdle()
		{
			base.OnIdle ();
			if (internalAutoAdvance) {
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

			if (index < 0 || index >= nextNodes.Length)
			{
				Debug.Log("Index called out of range for Node #" + id);
				return;
			}

            _goalNode = nextNodes[index];
            this.parent.currentNode = nextNodes[index];
			float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
            _moveTween = mover.transform.DOMove(_goalNode.transform.position,(moveSpeed*globalSpeed)*dist).SetEase(Ease.InOutSine);
            parent.pressable = false;

            this.SwitchToState(NodeState.START);
        }
    }
}

