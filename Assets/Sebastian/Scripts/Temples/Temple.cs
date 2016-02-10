using UnityEngine;
using System.Collections;

public enum TempleType { MAIN, OTHER }
public abstract class Temple : MonoBehaviour {

    public TempleType type;

    protected virtual void Start() {
        TempleManager.instance.AddTemple(this);
        TempleManager.instance.OnTempleChange += HandleOnTempleChange;
    }

    protected virtual void OnDestroy() {
        TempleManager.instance.RemoveTemple(this);
        TempleManager.instance.OnTempleChange -= HandleOnTempleChange;
    }

    public abstract void HandleOnTempleChange(Temple t);

}
