using UnityEngine;
using System.Collections;

public class MoveEdge : GenericHoloEdge {



    public override void edgeUpdate()
    {
        if (module.state.Equals(ModuleState.END))
        {
            parent.currentNode = toNode;
            toNode.Activate();
            parent.activeEdges.Remove(this);
        }
    }

    public override void Activate()
    {
        Debug.Log("Activate.");
        if (module && (module as MoveModule))
        {
            parent.activeEdges.Add(this);
            module.moveTo = toNode.transform;
            module.SwitchToState(ModuleState.IDLE);
        }
        else
        {
            Debug.Log("No move module attached to MoveEdge #" + this.id + " (" + this.name + ").");
        }
    }
}
