using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
	public class blastOffNode : RailsNode
	{
		public GameObject rocket;
		public GameObject astronaut;
		public GameObject roller;
		public makeRollerCoasterWires rollWires;
		public GameObject blankScreen;
		public RotateAstronaut podRotator;
		public Renderer planetRender;
		private float fade = 0f;
		public float shakeDown = .99f;


		public GameObject birds;

		public TransformUniversal shake;

		public GameObject planet;

		public GameObject[] toParent;
		public TransformUniversal planetRotate;

		float counter = -.3f;
		
		protected override void OnIdle()
		{
			base.OnIdle ();
			if (internalAutoAdvance) {
				this.GoToNext (0);
			}
		}
		
		protected override void OnRunning()
		{

			if(fade<1)
				fade += Time.deltaTime * .04f;
			planetRender.sharedMaterial.SetFloat ("_Mix", fade);

			base.OnRunning();

			if (shake.translateNoiseUpperBounds.x > .00001f) {

				shake.translateNoiseUpperBounds *= shakeDown;
				shake.translateNoiseLowerBounds *= shakeDown;
			}


			if(counter<1)
				counter += .05f * Time.deltaTime;
			if(counter>0)
				planetRotate.globalTimeScale = counter;
			
			if (!_moveTween.IsPlaying() && !(counter<1))
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
			for (int i = 0; i < toParent.Length; i++) {
				toParent[i].transform.parent = planet.transform;
			}

			for (int i = 0; i < birds.transform.childCount; i++) {
				birds.transform.GetChild(i).DOScale(.0001f,1f);
			}

			base.SwitchToStart();

			shake.enabled = true;

			blankScreen.SetActive (true);

			podRotator.rotateSpeed = .1f;

			rollWires.animate = true;
			roller.transform.DORotate (new Vector3 (50, 0, 0), 3f, RotateMode.Fast);

//			astronaut.transform.parent.GetComponent<RotateAstronaut> ().rotateSpeed = .5f;

			CopyRotation cp = astronaut.GetComponent<CopyRotation>();
			cp.y = true;
			CopyRotation cp2 = astronaut.transform.GetChild(0).gameObject.GetComponent<CopyRotation>();
			cp2.x = true;

			if (endAudios [0].isPlaying) {
				endAudios[0].Stop();
			}

			this.SwitchToState(NodeState.RUNNING);
		}
		
		protected override void SwitchToRunning()
		{
			base.SwitchToRunning();
		}
		
		protected override void SwitchToEnd()
		{
//			base.SwitchToEnd();
			blankScreen.SetActive (false);



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

