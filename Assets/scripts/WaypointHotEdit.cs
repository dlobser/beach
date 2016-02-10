using UnityEngine;
using System.Collections;
using System.Collections.Generic;
[ExecuteInEditMode]
public class WaypointHotEdit : MonoBehaviour {

    public GameObject[] targets;
    private HoloGraphController _controller;
    public GameObject edgeParent;
    public List<GenericHoloNode> nodes;
    public List<GenericHoloEdge> edges;

    public GameObject player;
    public float moveSpeed;


	void Start () {
        targets = GameObject.FindGameObjectsWithTag("target");
        _controller = this.GetComponent<HoloGraphController>();
        if (!_controller) this.gameObject.AddComponent<HoloGraphController>();
        
        nodes.Clear();
        for (int i = 0; i < edges.Count; i++)
        {
            Destroy(edges[i]);
        }
        edges.Clear();

        //NODES
        for (int i = 0; i < targets.Length; i++)
        {
            GenericHoloNode n = targets[i].GetComponent<GenericHoloNode>();
            if (!n) targets[i].AddComponent<GenericHoloNode>();
            n.parent = _controller;
            nodes.Add(n);

            MoveModule m = n.GetComponent<MoveModule>();

            if (!m)
            {
                m = n.gameObject.AddComponent<MoveModule>();
                m.moveSpeed = 5f;
                m.move = true;
                m.moveObject = player;
                m.moveTo = n.transform;
                m.parent = _controller;

                n.module = m;
            }
        }

        //EDGES
        if (edgeParent)
        {
            //for (int i = 0; i < nodes.Count; i++)
            //{
            //    for (int j = 0; j < nodes.Count; j++)
            //    {
            //        //Debug.Log(i);
            //        if (i != j)
            //        {
            //            MoveEdge e = (new GameObject()).AddComponent<MoveEdge>();
            //            e.transform.parent = edgeParent.transform;
            //            e.transform.localPosition = Vector3.zero;

            //            e.fromNode = nodes[i];
            //            e.toNode = nodes[j];
            //            e.parent = _controller;
            //            edges.Add(e);

            //            MoveModule m = e.gameObject.AddComponent<MoveModule>();
            //            m.moveSpeed = 5f;
            //            m.move = true;
            //            m.moveObject = player;
            //            m.moveTo = e.toNode.transform;
            //            m.parent = _controller;

            //            e.module = m;
            //        }
            //    }
            //}   
        }
       
	}

    void OnEnable()
    {
        this.Start();
    }

}
