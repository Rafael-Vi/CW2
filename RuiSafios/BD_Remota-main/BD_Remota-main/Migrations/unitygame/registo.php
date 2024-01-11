<?php 

	//versão simplificada de ligação à BD
	$ligacao = mysqli_connect('localhost', 'root', '', 'gamedb');
	
	if(mysqli_connect_errno()){
		//Forma simplificada de detetar erros 
		echo "#1: Erro ligação BD"; //Erro code #1 = a Ligação Falhou
		exit();
	}
	$nomeJogador = $_POST["nome"];
	$passwordJogador = $_POST["pass"];

	$dataregisto=date("Y-m-d H:i:s");
	$pontuacao = 0;

	//Verificar se nome de utilizador já existe na BD
	$verificarNome = "SELECT nome FROM jogador WHERE nome = '" . $nomeJogador ."';";
	$qVerificaNome = mysqli_query($ligacao, $verificarNome) or die ("#2: a query verifica nome falhou"); //Erro #2 = Não foi possivel verificar o nome do utilizador 
	if(mysqli_num_rows($qVerificaNome) > 0) //Erro #3 - O nome já está registado 
	{
		echo "#3: O nome do jogador já existe";
		exit();
	}
	//adicionar utilizador
	//Salt funciona como uma chave de encriptação que é adicionada à encriptação de palavra pass
	$salt = "\$5\$round=5000\$" . "masterkeyrb" . $nomeJogador . "\$";
	//adicionar salt à chave de encriptação 		
	$password = crypt($passwordJogador, $salt);
	$qCriarUtilizador = " INSERT INTO jogador (nome, password, criado_em, salt, pontuacao) VALUES ( '" .$nomeJogador. "', '" .$password. "', '" .$dataregisto. "', '" .$salt. "', '" .$pontuacao. "' );";
	//Registar utilizador
	mysqli_query($ligacao, $qCriarUtilizador) or die ("#4: Falha ao criar utilizador");//Erro #4 = Não foi possivel registar o utilizador na BD
	
	//Se o script terminar com sucesso enviar string 0 SUCESSO
	echo("0")
?>