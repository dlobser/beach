using UnityEngine;
using System.Collections;

public class PhotonManager : Photon.MonoBehaviour {

    public TemplePlayer templePlayerPrefab;

	// Use this for initialization
	void Start () {
        PhotonNetwork.ConnectUsingSettings("001");
	}

    void OnConnectedToMaster() {
        PhotonNetwork.JoinLobby(TypedLobby.Default);
    }

    void OnJoinedLobby() {
        PhotonNetwork.JoinOrCreateRoom("test", new RoomOptions(), TypedLobby.Default);
    }
	
    void OnJoinedRoom() {
        if (templePlayerPrefab) {
            PhotonNetwork.Instantiate(templePlayerPrefab.name, Vector3.zero, Quaternion.identity, 0);
        }
    }

	// Update is called once per frame
	void Update () {
	
	}
}
