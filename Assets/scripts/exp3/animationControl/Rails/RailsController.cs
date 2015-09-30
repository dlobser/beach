using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;

namespace exp3
{
    public class RailsController : MonoBehaviour
    {

        public RailsNode currentNode;
        public List<RailsNode> activeNodes;
        public RailsNode[] allNodes;

		public float globalSpeed = 1;

        public Tween go;
        public bool pressable = true;
        
        void Start()
        {
            allNodes = GameObject.FindObjectsOfType<RailsNode>();

            activeNodes.Add(currentNode);
        }

        void Update()
        {
            for (int i = 0; i < activeNodes.Count; i++)
            {
                Debug.Log("Node #" + activeNodes[i].id + " state: " + activeNodes[i].state);
                activeNodes[i].nodeUpdate();
            }

            if (pressable)
                HandleInputs();
        }

        void HandleInputs()
        {
            if (Input.GetButtonDown("Fire1"))
            {
                this.GoToNext(0);
            }
			if (Input.GetButtonDown("Fire2"))
			{
				this.GoToNext(1);
			}
        }



        public void GoToNext(int index)
        {
            currentNode.GoToNext(index);
        }
    }
}

