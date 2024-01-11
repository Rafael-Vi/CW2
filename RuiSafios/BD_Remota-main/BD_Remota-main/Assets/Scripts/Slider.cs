using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Slider : MonoBehaviour
{

    public Slider som;
    public Slider fire;
    // Start is called before the first frame update
    void Start()
    {
        som = (Slider)GameObject.FindObjectsOfType(typeof(Slider))[0];
        fire = (Slider)GameObject.FindObjectsOfType(typeof(Slider))[1];
        Debug.Log(som);
        Debug.Log(fire);
    }
}
