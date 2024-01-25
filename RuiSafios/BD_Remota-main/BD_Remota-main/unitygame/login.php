<?php
	//versão simplificada de ligação à BD
	$ligacao = mysqli_connect('localhost', 'root', '', 'bd_remota');
	
	if(mysqli_connect_errno()){
		//Forma simplificada de detetar erros 
		echo "1"; //Erro code #1 = a Ligação Falhou
		exit();
	}
	$nomeJogador = $_POST["nome"];
	$passwordJogador = $_POST["pass"];

	$dataregisto=date("Y-m-d H:i:s");

	//Verificar se nome de utilizador já existe na BD
	$qVerificarNome = "SELECT nome, password, salt, pontuacao, is_verified FROM jogador WHERE nome LIKE '" . $nomeJogador ."';";
	$verificaNome = mysqli_query($ligacao, $qVerificarNome) or die ("#2: a query verifica nome falhou"); //Erro #2 = Não foi possivel verificar o nome do utilizador 
	$numResultados = mysqli_num_rows($verificaNome);
	if($numResultados != 1)
	{
		echo "5: Utilizador não está registado ou mais do que um utilizador registado com o mesmo nome."; // Erro #5 = Numero de utilizadores registados != 1
		exit();
	}

	//verificar utilizador e palavra pass
	$VerificarDadosRegistados = mysqli_fetch_assoc($verificaNome);
	$nome = $VerificarDadosRegistados["nome"];
	$password = $VerificarDadosRegistados["password"];
	$salt = $VerificarDadosRegistados["salt"];

	$verificarPass = crypt($passwordJogador, $salt);
	if($password != $verificarPass)
	{
		echo "6: Password introduzida não está correta";// Erro #6 as password não são iguais
		exit();
	}

	$isVerified = $VerificarDadosRegistados["is_verified"];
	if ($isVerified == "1") {
		// User account is verified
		echo 0, "\t", $VerificarDadosRegistados["pontuacao"], "\t", "Account is verified";
	} else {
		// User account is not verified
		echo 0, "\t", $VerificarDadosRegistados["pontuacao"], "\t", "Account is not verified";
	}
	echo 0 , "\t" , $VerificarDadosRegistados["pontuacao"];
?>