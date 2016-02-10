using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3
{
    public class RailsNode : MonoBehaviour
    {
        public static int _railsnode_id_ = 0;
        public int id;
		public float globalSpeed = 1;
        

        public RailsController parent;
        public bool autoAdvance = false;
		public float autoAdvanceDelay = 0f;
		protected bool internalAutoAdvance = false;
		protected float autoAdvanceTimer = 0f;

        public GameObject mover;
        public GameObject newParent;
        protected Tween _moveTween;
        public float moveSpeed;

        //ACTIVATION
		public GameObject[] activate;
		public GameObject[] deactivate;

        //MOVEMENT
        protected RailsNode _goalNode;
        public RailsNode[] nextNodes;

        //AUDIO
        public AudioSource[] startAudios;
        public AudioSource[] runningAudios;
        protected bool areRunningAudiosDone = false;
        public AudioSource[] endAudios;
		public float maxVolume = 1;
        public float audioFadeInSpeed = 0.02f;
        public float audioFadeOutSpeed = 0.02f;

        //ANIMATIONS
        public Animator[] startAnimators;
        public Animator[] runningAnimators;
        protected bool areRunningAnimationsDone = false;
        public Animator[] endAnimators;
        public string[] startAnimationNames;
        public string[] runningAnimationNames;
        public string[] endAnimationNames;




        public NodeState state = NodeState.IDLE;

        void Start()
        {
            nodeStart();
        }

        public virtual void nodeStart()
        {
            this.id = _railsnode_id_++;
            parent = GameObject.FindObjectOfType<RailsController>();
            this.globalSpeed = parent.globalSpeed;
            if (!mover) mover = parent.gameObject;
        }

        public virtual void nodeUpdate()
        {
            HandleStates();
        }

        public virtual void HandleStates()
        {
            switch (this.state)
            {
                case NodeState.IDLE:
                    OnIdle();
                    break;
                case NodeState.START:
                    OnStart();
                    break;
                case NodeState.RUNNING:
                    OnRunning();
                    break;
                case NodeState.END:
                    OnEnd();
                    break;
            }
        }

        protected virtual void OnIdle() 
        {
			if (autoAdvance) {
				autoAdvanceTimer += Time.deltaTime;

				if (autoAdvanceDelay > 0f) {
					parent.pressable = true;
				} else {
					parent.pressable = false;
				}

				if (autoAdvanceTimer > autoAdvanceDelay) {
					internalAutoAdvance = true;
				}

			} else {
				parent.pressable = true;
			}
        }

        protected virtual void OnStart() 
        { 
            
        }

        protected virtual void OnRunning() 
        {
            //AUDIO 
            for (int i = 0; i < runningAudios.Length; i++)
            {
                if (runningAudios[i].volume < maxVolume)
                    runningAudios[i].volume += audioFadeInSpeed;
            }

            //ANIMATIONS
            areRunningAnimationsDone = true;
            for (int i = 0; i < runningAnimators.Length; i++)
            {
                AnimatorStateInfo info = runningAnimators[i].GetCurrentAnimatorStateInfo(0);

                if (!info.IsName("Idle"))
                {
                    areRunningAnimationsDone = false;
                    break;
                }
            }
        }


        protected virtual void OnEnd()
        {
            //AUDIO
            areRunningAudiosDone = true;
            for (int i = 0; i < runningAudios.Length; i++)
            {
                if (runningAudios[i].volume > 0)
                {
                    runningAudios[i].volume -= audioFadeOutSpeed;
                    areRunningAudiosDone = false;
                }
                else
                {
                    runningAudios[i].Stop();
                }
            }
        }

        public virtual void SwitchToState(NodeState s)
        {
            this.state = s;
            switch (this.state)
            {
                case NodeState.IDLE:
                    this.SwitchToIdle();
                    break;
                case NodeState.START:
                    this.SwitchToStart();
					Activated ();
					DeActivated();
                    break;
                case NodeState.RUNNING:
                    this.SwitchToRunning();
                    break;
                case NodeState.END:
                    this.SwitchToEnd();
                    break;
            }
        }

        protected virtual void SwitchToIdle() { }

        protected virtual void SwitchToStart() 
        {
            //AUDIO
            for (int i = 0; i < startAudios.Length; i++)
            {
                startAudios[i].Play();
            }

            //ANIMATIONS
            for (int i = 0; i < startAnimators.Length; i++)
            {
                startAnimators[i].Play(startAnimationNames[i], -1, 0f);
            }
        }

        protected virtual void SwitchToRunning() 
        {
            //AUDIO
            for (int i = 0; i < runningAudios.Length; i++)
            {
                runningAudios[i].Play();
                runningAudios[i].volume = 0f;
            }

            //ANIMATIONS
            for (int i = 0; i < runningAnimators.Length; i++)
            {
                runningAnimators[i].Play(runningAnimationNames[i], -1, 0f);
            }
        }

        protected virtual void SwitchToEnd() 
        {
            //AUDIO
            for (int i = 0; i < endAudios.Length; i++)
            {
                endAudios[i].Play();
            }
            
            //ANIMATIONS
            for (int i = 0; i < endAnimators.Length; i++)
            {
                endAnimators[i].Play(endAnimationNames[i], -1, 0f);
            }
        }


		public void Activated(){
			foreach (GameObject g in deactivate)
				if(g!=null)
					g.SetActive (false);
			
		}
		
		public void DeActivated(){
			foreach (GameObject g in activate)
				if(g!=null)
					g.SetActive (true);
		}
        
        public virtual void GoToNext(int index)
        {
            if (index < 0 || index >= nextNodes.Length)
            {
                Debug.Log("Index called out of range for Node #" + id);
                return;
            }
        }
    }

    public enum NodeState
    {
        IDLE, START, RUNNING, END
    }
}

