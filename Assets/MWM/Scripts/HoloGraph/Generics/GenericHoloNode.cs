using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GenericHoloNode : MonoBehaviour {

    public static int _holonode_id_ = 0;
    public int id;

    public HoloGraphController parent;
    public List<GenericHoloEdge> edges = new List<GenericHoloEdge>();
    public GenericHoloModule module;

    void Start()
    {
        id = _holonode_id_++;
    }

    public virtual void nodeUpdate()
    {
        Debug.Log("NODE UPDATE: " + this.id + " (" + this.name + ").");
    }

    public void AddEdge(GenericHoloEdge e)
    {
        edges.Add(e);
    }

    public virtual void Activate()
    {
        if (module) module.SwitchToState(ModuleState.IDLE);
    }
}
