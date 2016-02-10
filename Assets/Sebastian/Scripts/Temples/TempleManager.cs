using UnityEngine;

using System;
using System.Collections;
using System.Collections.Generic;


public class TempleManager : MonoBehaviour {

    public static TempleManager instance;

    public Dictionary<TempleType, Temple> templeDict = new Dictionary<TempleType, Temple>();
    public Temple currentTemple;

    public Action<Temple> OnTempleChange;

    //Prevent construction
    protected TempleManager() { }

    static TempleManager() {
        if (!instance) {
            GameObject t = new GameObject("temple-manager");
            instance = t.AddComponent<TempleManager>();
        }
    }

    public void AddTemple(Temple temple) {
        if (templeDict.ContainsKey(temple.type)) {
            Debug.Log("Temple already in dictionary.");
        } else {
            templeDict.Add(temple.type, temple);
        }
    }

    public void RemoveTemple(Temple temple) {
        if (!templeDict.ContainsKey(temple.type)) {
            Debug.Log("Temple not in dictionary.");
        } else {
            templeDict.Remove(temple.type);
        }
    }

    public void SwitchToTemple(Temple t) {
        currentTemple = t;
        if (OnTempleChange != null)
            OnTempleChange(currentTemple);
    }
}
