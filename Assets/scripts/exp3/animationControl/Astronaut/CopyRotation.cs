using UnityEngine;
using System.Collections;

namespace exp3
{
    public class CopyRotation : MonoBehaviour
    {

        public Transform goal;
        public float speed;
        public bool x;
        public bool y;
        public bool z;

        public Vector3 minBounds;
        public Vector3 bounds;

        public GameObject joystick;

        public float deadSpaceTime = 1f;
        float timer = 0f;
        bool updatingGoal = false;


        // Use this for initialization
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            if (updatingGoal)
            {

                Vector3 gv = goal.transform.localRotation.eulerAngles;

                if (!x) gv.x = 0;
                if (!y) gv.y = 0;
                if (!z) gv.z = 0;

                if (gv.x > 180)
                {
                    gv.x -= 360f;
                }

                if (gv.y > 180)
                {
                    gv.y -= 360f;
                }

                if (gv.z > 180)
                {
                    gv.z -= 360f;
                }

                if (bounds.x != 0)
                {
                    gv.x = (Mathf.Abs(gv.x) > bounds.x ? (gv.x > 0 ? bounds.x : (-1 * bounds.x)) : gv.x);
                }

                if (bounds.y != 0)
                {
                    gv.y = (Mathf.Abs(gv.y) > bounds.y ? (gv.y > 0 ? bounds.y : (-1 * bounds.y)) : gv.y);
                }

                if (bounds.z != 0)
                {
                    gv.z = (Mathf.Abs(gv.z) > bounds.z ? (gv.z > 0 ? bounds.z : (-1 * bounds.z)) : gv.z);
                }

                gv.x = (Mathf.Abs(gv.x) > minBounds.x ? gv.x : 0);
                gv.y = (Mathf.Abs(gv.y) > minBounds.y ? gv.y : 0);
                gv.z = (Mathf.Abs(gv.z) > minBounds.z ? gv.z : 0);


                this.transform.localRotation = Quaternion.Lerp(this.transform.localRotation, Quaternion.Euler(gv), Time.deltaTime * speed);

                gv = (gv - this.transform.localRotation.eulerAngles);

                gv.x = gv.x % 360f;
                gv.y = gv.y % 360f;
                gv.z = gv.z % 360f;

                Vector3 jr = new Vector3();

                Vector3 diff = Quaternion.FromToRotation(this.transform.forward, goal.transform.forward).eulerAngles;

//                Debug.Log(diff);

                if (x)
                {
                    if (diff.x > 0 && diff.x < 180)
                    {
                        jr.x = 30;
                    }
                    else
                    {
                        jr.x = -30;
                    }
                }

                if (y)
                {
                    if (diff.y > 0 && diff.y < 180)
                    {
                        jr.z = -30;
                    }
                    else
                    {
                        jr.z = 30;
                    }
                }

                if (joystick) joystick.transform.localRotation = Quaternion.Lerp(joystick.transform.localRotation, Quaternion.Euler(jr), Time.deltaTime * 3f);

                if ((x ? Mathf.Abs(gv.x) < 5f : true) && (y ? Mathf.Abs(gv.y) < 5f : true) && (z ? Mathf.Abs(gv.z) < 5f : true))
                {
                    updatingGoal = false;
                }
            }
            else
            {
                if (joystick) joystick.transform.localRotation = Quaternion.Lerp(joystick.transform.localRotation, Quaternion.Euler(Vector3.zero), Time.deltaTime * 3f);


                Vector3 gv = goal.transform.localRotation.eulerAngles;

                if (gv.x > 180) {
                    gv.x -= 360f;
                }

                if (gv.y > 180) {
                    gv.y -= 360f;
                } 

                if (gv.z > 180) {
                    gv.z -= 380f;
                }

                if (x)
                {
                    float lrx = (this.transform.localRotation.eulerAngles.x);
                    if (lrx > 180) lrx -= 360f;
                    if (Mathf.Abs(gv.x - lrx) % 360f > minBounds.x)
                    {
                        timer += Time.deltaTime;
                        if (timer > deadSpaceTime)
                        {
                            timer = 0;
                            updatingGoal = true;
                        }
                    }
                    else
                    {
                        timer = 0;
                    }
                }

                if (y)
                {
                    float lry = (this.transform.localRotation.eulerAngles.y);
                    if (lry > 180) lry -= 360f;

                    if ((Mathf.Abs(gv.y - lry)) % 360f > minBounds.y)
                    {
                        timer += Time.deltaTime;

                        if (timer > deadSpaceTime)
                        {
                            timer = 0;
                            updatingGoal = true;
                        }
                    }
                    else
                    {
                        timer = 0;
                    }
                }
                
            }

            
        }
    }
}

