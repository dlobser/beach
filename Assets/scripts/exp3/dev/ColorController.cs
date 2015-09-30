using UnityEngine;
using System.Collections;
namespace exp3
{
    public class ColorController : MonoBehaviour
    {

        //COMPONENTS
        private Renderer _renderer;
        private Material _material;

        //COLOR VARS
        public ColorState colorState = ColorState.PRIMARY;
        public enum ColorState { PRIMARY, SECONDARY, OTHER }
        public Color[] colors;
        private Color _originalColor;
        private Color _currentColor;
        private Color _currentColorZeroAlpha;

        //FADE VARS
        public FadeState fadeState = FadeState.IDLE;
        public enum FadeState { FADING, IDLE, IN, OUT }
        public float fadeSpeed = 5f;
        private Color _fadeGoalColor;

        void Start()
        {
            this._renderer = this.GetComponent<Renderer>();
            this._material = _renderer.material;

            //Setting up ColorState
            Color c = this._material.color;
            _originalColor = c;
            c.a = 0;
            _currentColor = _originalColor;
            _currentColorZeroAlpha = c;

            this._material.color = _currentColorZeroAlpha;
            this._fadeGoalColor = _currentColor;
        }

        void Update()
        {
            HandleFadeStates();
        }

        void HandleFadeStates()
        {
            switch (this.fadeState)
            {
                case FadeState.FADING:
                    this.OnFading();
                    break;
                case FadeState.IDLE:
                    this.OnIdle();
                    break;
            }
        }

        void SwitchToState(FadeState s)
        {
            this.fadeState = s;
            switch (this.fadeState)
            {
                case FadeState.FADING:
                    this.SwitchToFading();
                    break;
                case FadeState.IDLE:
                    this.SwitchToIdle();
                    break;
            }
        }

        void SwitchToFading() { }
        void SwitchToIdle() { }

        void OnFading()
        {
            if (ColorController.isColorEqual(this._material.color, this._fadeGoalColor))
            {
                this.SwitchToState(FadeState.IDLE);
            }
        }

        void OnIdle() { }



        public bool isVisible()
        {
            return (this._material.color.a < 1f ? false : true);
        }


        public static bool isColorEqual(Color c1, Color c2)
        {
            float t = 0.01f;

            if (Mathf.Abs(c1.r - c2.r) < t && Mathf.Abs(c1.g - c2.g) < t && Mathf.Abs(c1.b - c2.b) < t && Mathf.Abs(c1.a - c2.a) < t)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void SetColor(int i)
        {
            if (i > colors.Length || i < 0)
            {
                Debug.Log("WARNING: color index # requested not 0 or in array. Switching to original color");
                this.SetColor(_originalColor);
            }
            else
            {
                if (i == 0)
                {
                    this.SetColor(_originalColor);
                }
                else
                {
                    this.SetColor(colors[i - 1]);
                }
            }
        }


        public void SetColor(Color c)
        {
            this._currentColor = c;
            c.a = 0f;
            this._currentColorZeroAlpha = c;
            this._fadeGoalColor = this._currentColor;
            this.SwitchToState(FadeState.FADING);
            //this.SnapColor();
            this.colorState = ColorState.OTHER;
        }

        public void FadeIn()
        {
            this._fadeGoalColor = this._currentColor;
            this.SwitchToState(FadeState.FADING);
        }

        public void FadeOut()
        {
            this._fadeGoalColor = this._currentColorZeroAlpha;
            this.SwitchToState(FadeState.FADING);
        }

        public void SnapColor()
        {
            this._material.color = _fadeGoalColor;
            this.SwitchToState(FadeState.IDLE);
        }


    }
}