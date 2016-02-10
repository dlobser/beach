using UnityEngine;
using System.Collections;

public class GenericHoloEdge : MonoBehaviour {

    public static int _holoedge_id_ = 0;
    public int id;

    public HoloGraphController parent;
    public GenericHoloModule module;
    public GenericHoloNode fromNode;
    public GenericHoloNode toNode;

    void Start()
    {
        id = _holoedge_id_++;
    }

    public virtual void edgeUpdate()
    {
        Debug.Log("EDGE UPDATE: " + this.id + " (" + this.name + ").");
    }

    public virtual void Activate()
    {
        if (module) module.SwitchToState(ModuleState.IDLE);
    }

#if UNITY_EDITOR
    void OnDrawGizmos()
    {
        Gizmos.color = Color.green;

        if (fromNode && toNode)
        {
            Gizmos.DrawLine(fromNode.transform.position, toNode.transform.position);
        }
    }
#endif
}
