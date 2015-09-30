using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
    public class AnimationIntoTweenNode : RailsNode
    {
		public bool flag = false;
		public GameObject astronaut;
		public Transform door;

		public override void nodeStart() {
			base.nodeStart ();
			areRunningAnimationsDone = false;
		}

        protected override void OnRunning()
        {


            base.OnRunning();
			print (areRunningAnimationsDone);
            if (runningAnimators [0].GetCurrentAnimatorStateInfo (0).IsName ("Idle") && flag) {
				if (_moveTween == null) {
					if (newParent)
						mover.transform.parent = newParent.transform;
					float dist = Vector3.Distance (_goalNode.transform.position, mover.transform.position);
					_moveTween = mover.transform.DOMove (_goalNode.transform.position, (moveSpeed * globalSpeed) * dist * 10).SetEase (Ease.InOutSine);
					mover.transform.DORotate (Vector3.zero, (moveSpeed * globalSpeed) * dist * 10).SetEase (Ease.InOutSine);
				} else {
					if (!_moveTween.IsPlaying ()) {
						_moveTween = null;
						this.SwitchToState (NodeState.END);
					}
				}
			} else {
				flag = true;
			}
        }

        protected override void OnEnd() 
        {
            base.OnEnd();

            if (areRunningAudiosDone)
            {
                parent.activeNodes.Remove(this);
                this.SwitchToState(NodeState.IDLE);
            }
        }

        protected override void SwitchToStart()
        {

			astronaut.transform.parent.GetComponent<RotateAstronaut> ().rotateSpeed = .5f;
			door.DOMove (new Vector3 (.0060f, 102.44f, -14.25f), 3f);
			CopyRotation cp = astronaut.GetComponent<CopyRotation>();
			cp.y = true;
			CopyRotation cp2 = astronaut.transform.GetChild(0).gameObject.GetComponent<CopyRotation>();
			cp2.x = true;

            base.SwitchToStart();

            this.SwitchToState(NodeState.RUNNING);
        }

        protected override void SwitchToEnd()
        {
            base.SwitchToEnd();

            if (newParent) mover.transform.parent = newParent.transform;

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
            parent.pressable = false;
            this.SwitchToState(NodeState.START);
        }

    }
}

