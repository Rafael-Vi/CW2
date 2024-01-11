using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class Setings : MonoBehaviour
{

    [SerializeField]
    private TMP_Text utilizador;
    [SerializeField]
    private TMP_Text pontuacao;


    // Start is called before the first frame update
    void Start()
    {
        utilizador.text = "Utilizador: " + GestorPrograma.Instancia.Utilizador;
        pontuacao.text = "Potuação: " + GestorPrograma.Instancia.Pontuacao.ToString();
    }

    public void MenuPrincipal()
    {
        SceneManager.LoadScene(0);
    }
}
