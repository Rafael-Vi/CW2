using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;

public class Login : MonoBehaviour
{

    //variáveis necessárias para guardar o nome e pass do utilizador
    public InputField nomeUtilizador;
    public InputField passwordUtilizador;
    //btnSubmeter
    public Button btnSubmeter;
    
    public void ChamarLogin()
    {
        //inicia uma Corotina chamada Regista 
        StartCoroutine(LoginUtilizador());
    }

    IEnumerator LoginUtilizador()
    {
        //preparar dados a enviar para o servidor
        WWWForm form = new WWWForm();
        //os valores são enviados para o servidor $_POST["nome"] e $_POST["pass"]
        form.AddField("nome", nomeUtilizador.text);
        form.AddField("pass", passwordUtilizador.text);

        //fazer post para o servidor (URL para script .php)
        UnityWebRequest www = UnityWebRequest.Post("http://localhost/unitygame/login.php", form);
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

            //Passar valores recebidos pelo serviço web para um array de strings
            //'\t' os valores passados são divididos sempre que for inserido o valor '\t' scape sequence
            string[] resultados = www.downloadHandler.text.Split('\t');
            Debug.Log("Valor da primeira posição do array");
            Debug.Log(www.downloadHandler.text[0]);
            Debug.Log("A pontuação é: " + resultados[1]);
            if (www.downloadHandler.text[0] == '0')
            {
                //Enviar dados para GestorBaseDados
                
                GestorPrograma.Instancia.Utilizador = nomeUtilizador.text;
                GestorPrograma.Instancia.Pontuacao = int.Parse(resultados[1]);
                Debug.Log("Utilizador: " + GestorPrograma.Instancia.Utilizador + " Pontaução: " + GestorPrograma.Instancia.Pontuacao);

                //se o utilizador iniciar sessão corretamente corretamente volta para o menu inicial.
                UnityEngine.SceneManagement.SceneManager.LoadScene(0);
            }
            else
            {
                Debug.Log("Login falhou: " + www.downloadHandler.text);
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
