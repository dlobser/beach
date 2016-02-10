using UnityEngine;
using System.Collections;
namespace exp3
{

    public class ButtonPress : Interactable
    {

        public bool pressable = true;
        public bool returnToOrigPos = true;
        public Vector3 finalPosition = new Vector3(0f, -0.035f, 0f);
        public float pressSpeed = 0.1f;
        public float returnSpeed = 0.05f;

        private Vector3 tfp;

        public GameObject connectedObject;
        public string connectedSendMessage;
		public int connectedSendInt;

        private Vector3 _originalLocalPosition;

        void Start()
        {
            _originalLocalPosition = this.transform.localPosition;
            tfp = _originalLocalPosition + finalPosition;
        }

        void Update()
        {
            tfp = _originalLocalPosition + finalPosition;

            if (interacting && pressable)
            {
                this.transform.localPosition = Vector3.MoveTowards(this.transform.localPosition, tfp, Time.deltaTime * pressSpeed);
                interacting = false;
                if (this.transform.localPosition.Equals(tfp))
                {
                    this.ButtonPressed();
                    pressable = false;
                }
            }
            
            else if (!pressable && returnToOrigPos && !interacting)
            {
                this.transform.localPosition = Vector3.MoveTowards(this.transform.localPosition, _originalLocalPosition, Time.deltaTime * returnSpeed);
                if (this.transform.localPosition.Equals(_originalLocalPosition))
                    pressable = true;
            }
        }

        void ButtonPressed()
        {
            Debug.Log("Button Pressed!");
            if (connectedObject)
            {
                connectedObject.SendMessage(connectedSendMessage,connectedSendInt);
            }
        }
    }
}