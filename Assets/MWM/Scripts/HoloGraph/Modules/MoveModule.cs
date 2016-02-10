using UnityEngine;
using System.Collections;
using DG.Tweening;
public class MoveModule : GenericHoloModule {


    protected override void OnRun()
    {
        base.OnRun();

        if (moveObject.transform.position.Equals(moveTo.position))
            this.SwitchToState(ModuleState.END);
    }

    protected override void SwitchToIdle()
    {
        base.SwitchToIdle();

        parent.activeModules.Add(this);

        this.SwitchToState(ModuleState.START);
    }

    protected override void SwitchToStart()
    {
        base.SwitchToStart();

		if (moveObjectNewParent.GetComponent<TransformUniversal> () != null)
			moveObjectNewParent.GetComponent<TransformUniversal> ().globalTimeScale = 0;

        _moveTween = moveObject.transform.DOMove(moveTo.position, (moveSpeed * globalSpeed)).SetEase(Ease.InOutSine);

        this.SwitchToState(ModuleState.RUN);
    }

    protected override void SwitchToEnd()
    {
		moveObject.transform.parent = moveObjectNewParent.transform;
//		moveObject.transform.SetParent (moveObjectNewParent.transform);

		if (moveObjectNewParent.GetComponent<TransformUniversal> () != null)
			moveObjectNewParent.GetComponent<TransformUniversal> ().globalTimeScale = 1;

//		moveObject.transform.parent = moveObjectNewParent.transform;
        parent.activeModules.Remove(this);
    }
}
