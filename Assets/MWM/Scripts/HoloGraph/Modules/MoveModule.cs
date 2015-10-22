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

        _moveTween = moveObject.transform.DOMove(moveTo.position, (moveSpeed * globalSpeed));

        this.SwitchToState(ModuleState.RUN);
    }

    protected override void SwitchToEnd()
    {
        parent.activeModules.Remove(this);
    }
}
