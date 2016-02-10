using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HoloGraphController : MonoBehaviour {

    public List<GenericHoloNode> nodes = new List<GenericHoloNode>();
    public List<GenericHoloEdge> edges = new List<GenericHoloEdge>();
    public List<GenericHoloModule> modules = new List<GenericHoloModule>();
    public List<GenericHoloNode> activeNodes = new List<GenericHoloNode>();
    public List<GenericHoloEdge> activeEdges = new List<GenericHoloEdge>();
    public List<GenericHoloModule> activeModules = new List<GenericHoloModule>();

    public GenericHoloNode currentNode;

	// Use this for initialization
	void Start () {
        nodes.AddRange(GameObject.FindObjectsOfType<GenericHoloNode>());
        edges.AddRange(GameObject.FindObjectsOfType<GenericHoloEdge>());
        modules.AddRange(GameObject.FindObjectsOfType<GenericHoloModule>());

        foreach (GenericHoloNode n in nodes)
        {
            n.parent = this;
        }

        foreach (GenericHoloEdge e in edges)
        {
            e.parent = this;
            nodes.Find(x => x.Equals(e.fromNode)).AddEdge(e);
        }

        foreach (GenericHoloModule m in modules)
        {
            m.parent = this;
        }

        if (currentNode) activeNodes.Add(currentNode);
	}
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < activeNodes.Count; i++)
        {
            activeNodes[i].nodeUpdate();
        }

        for (int i = 0; i < activeEdges.Count; i++)
        {
            activeEdges[i].edgeUpdate();
        }

        for (int i = 0; i < activeModules.Count; i++)
        {
            activeModules[i].moduleUpdate();
        }

        //if (Input.GetMouseButtonDown(0))
        //{
        //    Debug.Log("ButtonDown");
        //    if (currentNode) currentNode.edges[0].Activate();
        //}
	}

}
