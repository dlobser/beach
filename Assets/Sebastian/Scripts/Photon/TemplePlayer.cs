using UnityEngine;
using System.Collections;

[RequireComponent(typeof(PhotonView))]
public class TemplePlayer : MonoBehaviour {

    PhotonView view;

    public Transform goal;
    Vector3 actualPosition;
    Quaternion actualRotation;

    void Start() {
        goal = GameObject.FindGameObjectWithTag("Player").transform;
        view = GetComponent<PhotonView>();
    }

    void Update() {
        if (view.isMine) {
            this.transform.position = goal.position;
            this.transform.rotation = goal.rotation;
            view.RPC("tp", PhotonTargets.OthersBuffered, transform.position, transform.rotation);
        } else {
            this.transform.position = Vector3.Lerp(this.transform.position, actualPosition, 5f * Time.deltaTime);
            this.transform.rotation = Quaternion.Slerp(this.transform.rotation, actualRotation, 5f * Time.deltaTime);
        }
    }

    [PunRPC]
    void tp(Vector3 pos, Quaternion rot) {
        actualPosition = pos;
        actualRotation = rot;
    }
}
