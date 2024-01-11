using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;

public class Registar : MonoBehaviour
{
    //variáveis necessárias para guardar o nome e pass do utilizador
    public InputField nomeUtilizador;
    public InputField passwordUtilizador;
    //btnSubmeter
    public Button btnSubmeter;

    public void ChamarRegistar()
    {
        //inicia uma Corotina chamada Regista 
        StartCoroutine(Registo());
    }
    IEnumerator Registo()
    {
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        //os valores são enviados para o servidor $_POST["nome"] e $_POST["pass"]
        form.AddField("nome", nomeUtilizador.text);
        form.AddField("pass", passwordUtilizador.text);

        //fazer post para o servidor (URL para script .php)
        UnityWebRequest www = UnityWebRequest.Post("http://localhost/unitygame/registo.php", form);
        //Pedir ao unity para executar e assim que receber toda a informação continua a execução do script
        yield return www.SendWebRequest();

        //se existir erro de comunicação com o servidor:
        if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
        {
            //Existem erros de comunicação
            Debug.Log("Comunicação com o servidor falhou. Erro #" + www.error);
        }
            //Se não, o utilizador é criado com sucesso e voltamos ao menu principal
        else
        {
            //O pedido foi enviado com sucesso
            Debug.Log("Pedido enviado com sucesso");
            

            if (www.downloadHandler.text[0] == '0')
            {
                //Receber dados do Servidor
                Debug.Log("Utilizador Registado com Sucesso");
                //se o utilizador for criado corretamente volta para o menu inicial.
                UnityEngine.SceneManagement.SceneManager.LoadScene(0);
            }
            else
            {
                //Registo Interrompido
                Debug.Log(www.downloadHandler.text);
            }
               
        }
    }
    
    public void VerificarInputs()
    {
        //verificar se campos nome e password foram prenchidos com 8 ou mais caracteres
        //Permitir clicar no botão btnSubmeter apenas se a seguinte condição se verificar:
        btnSubmeter.interactable = (nomeUtilizador.text.Length >= 3 && passwordUtilizador.text.Length >= 8);

    }

}
