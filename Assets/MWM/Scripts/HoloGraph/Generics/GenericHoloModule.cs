using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;

public class GenericHoloModule : MonoBehaviour {

    private static int _holomodule_id_ = 0;
    public int id;

    public float globalSpeed = 1;

    public HoloGraphController parent;

    public bool move;
    public GameObject moveObject;
    public GameObject moveObjectNewParent;
    public Transform moveTo;
    public float moveSpeed;
    protected Tween _moveTween;

    public bool activate;
    public GameObject[] activators;
    public GameObject[] deactivators;

    //AUDIO
    public bool audio;
    public AudioSource[] idleAudios;
    protected bool areIdleAudiosDone = false;
    public AudioSource[] startAudios;
    protected bool areStartAudiosDone = false;
    public AudioSource[] runAudios;
    protected bool areRunAudiosDone = false;
    public AudioSource[] endAudios;
    protected bool areEndAudiosDone = false;
    public float audioFadeInSpeed = 0.02f;
    public float audioFadeOutSpeed = 0.02f;

    //ANIMATIONS
    public bool animations;
    public Animator[] idleAnimators;
    protected bool areIdleAnimationsDone = false;
    public Animator[] startAnimators;
    protected bool areStartAnimationsDone = false;
    public Animator[] runAnimators;
    protected bool areRunAnimationsDone = false;
    public Animator[] endAnimators;
    protected bool areEndAnimationsDone = false;
    public string[] idleAnimationNames;
    public string[] startAnimationNames;
    public string[] runAnimationNames;
    public string[] endAnimationNames;

    private bool _switching;

    public ModuleState state; 

	void Start () {
        this.id = _holomodule_id_++;
        this.moduleStart();
	}

    public virtual void moduleStart()
    {
        parent = GameObject.FindObjectOfType<HoloGraphController>();
    }

    public virtual void moduleUpdate()
    {
        Debug.Log("MODULEUPDATE: " + this.id + " (" + this.name + ").");
        this.HandleStates();
    }

    protected void HandleStates()
    {
        switch (this.state)
        {
            case ModuleState.IDLE:
                this.OnIdle();
                break;
            case ModuleState.START:
                this.OnStart();
                break;
            case ModuleState.RUN:
                this.OnRun();
                break;
            case ModuleState.END:
                this.OnEnd();
                break;
        }
    }

    protected virtual void OnIdle() 
    {
        if (_switching)
        {
            _switching = !_switching;
            areIdleAudiosDone = false;
            areIdleAnimationsDone = false;
        }
        else
        {
            areIdleAudiosDone = SolveAudioBools(idleAudios);
            areIdleAnimationsDone = SolveAnimBools(idleAnimators, idleAnimationNames);
        }
    }

    protected virtual void OnStart() 
    {
        if (_switching)
        {
            _switching = !_switching;
            areStartAudiosDone = false;
            areStartAnimationsDone = false;
        }
        else
        {
            areStartAudiosDone = SolveAudioBools(startAudios);
            areStartAnimationsDone = SolveAnimBools(startAnimators, startAnimationNames);
        }
    }
    
    protected virtual void OnRun() 
    {
        if (_switching)
        {
            _switching = !_switching;
            areRunAudiosDone = false;
            areRunAnimationsDone = false;
        }
        else
        {
            areRunAudiosDone = SolveAudioBools(runAudios);
            areRunAnimationsDone = SolveAnimBools(runAnimators, runAnimationNames);
        }
    }
    
    
    protected virtual void OnEnd() 
    {
        if (_switching)
        {
            _switching = !_switching;
            areEndAudiosDone = false;
            areEndAnimationsDone = false;
        }
        else
        {
            areEndAudiosDone = SolveAudioBools(endAudios);
            areEndAnimationsDone = SolveAnimBools(endAnimators, endAnimationNames);
        }
    }

    public virtual void SwitchToState(ModuleState s)
    {
        this.state = s;
        this._switching = true;

        switch (this.state)
        {
            case ModuleState.IDLE:
                this.SwitchToIdle();
                break;
            case ModuleState.START:
                this.SwitchToStart();
                break;
            case ModuleState.RUN:
                this.SwitchToRun();
                break;
            case ModuleState.END:
                this.SwitchToEnd();
                break;
        }
    }

    protected virtual void SwitchToIdle()
    {
        PlayAudios(idleAudios);
        PlayAnimations(idleAnimators,idleAnimationNames);
    }

    protected virtual void SwitchToStart()
    {
        PlayAudios(startAudios);
        PlayAnimations(startAnimators,startAnimationNames);
    }

    protected virtual void SwitchToRun()
    {
        PlayAudios(runAudios);
        PlayAnimations(runAnimators,runAnimationNames);
    }

    protected virtual void SwitchToEnd()
    {
        PlayAudios(endAudios);
        PlayAnimations(endAnimators,endAnimationNames);
    }

    protected bool SolveAudioBools(AudioSource[] audios)
    {
        int i;
        for (i = 0; i < audios.Length; i++)
            if (audios[i].isPlaying)
                break;

        return (i == audios.Length);
    }

    protected bool SolveAnimBools(Animator[] animators, string[] names)
    {
        int j;
        for (j = 0; j < animators.Length; j++)
            if (animators[j].GetCurrentAnimatorStateInfo(0).IsName(names[j]))
                break;

        return (j == animators.Length);
    }

    protected void PlayAudios(AudioSource[] audios)
    {
        for (int i = 0; i < audios.Length; i++)
            audios[i].Play();
    }

    protected void PlayAnimations(Animator[] animators, string[] names)
    {
        for (int i = 0; i < animators.Length; i++)
            animators[i].Play(names[i], -1, 0f);
    }
}

public enum ModuleState
{
    IDLE, START, RUN, END
}
