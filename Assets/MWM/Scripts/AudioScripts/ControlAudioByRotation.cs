using UnityEngine;
using System.Collections;

public class ControlAudioByRotation : MonoBehaviour {

    public AudioManager audio;
    public float fullVolumeRange = 45f;
    public float audioRange = 90f;

    public GameObject user;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        this.HandleVolumeByRotation();
	}

    void HandleVolumeByRotation()
    {
        float uy = (user.transform.eulerAngles.y > 180 ? user.transform.eulerAngles.y - 360f : user.transform.eulerAngles.y);
        float ay = (this.transform.eulerAngles.y > 180 ? this.transform.eulerAngles.y - 360f : this.transform.eulerAngles.y);

        if (Mathf.Abs(uy - ay) <= fullVolumeRange)
        {
            audio.volume = 1f;
            audio.UnPause();
            if (!audio.isPlaying)
            {
                audio.Play();
            }
        }
        else if (Mathf.Abs(uy - ay) <= audioRange)
        {
            audio.UnPause();
            audio.volume = ((audioRange - Mathf.Abs(uy - ay)) / audioRange) * Mathf.Min(1f, 1f);
        }
        else
        {
            audio.Pause();
            audio.volume = 0;
        }

    }
}
