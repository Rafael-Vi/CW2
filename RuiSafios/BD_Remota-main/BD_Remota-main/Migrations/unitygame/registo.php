<?php 


	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	// Load Composer's autoloader
	require 'vendor/autoload.php';

	// Simplified database connection
	$ligacao = mysqli_connect('localhost', 'root', '', 'bd_remota');

	if (mysqli_connect_errno()) {
		echo "#1: Erro ligação BD";
		exit();
	}

	$nomeJogador = $_POST["nome"];
	$passwordJogador = $_POST["pass"];

	$dataregisto = date("Y-m-d H:i:s");
	$pontuacao = 0;

	// Verificar se o nome de utilizador já existe na BD
	$verificarNome = "SELECT nome FROM jogador WHERE nome = '" . $nomeJogador . "';";
	$qVerificaNome = mysqli_query($ligacao, $verificarNome) or die("#2: a query verifica nome falhou");

	if (mysqli_num_rows($qVerificaNome) > 0) {
		echo "#3: O nome do jogador já existe";
		exit();
	}

	// Adicionar utilizador
	$salt = "\$5\$round=5000\$" . "masterkeyrb" . $nomeJogador . "\$";
	$password = crypt($passwordJogador, $salt);

	// Generate a verification token
	$verificationToken = md5(uniqid(rand(), true));

	$qCriarUtilizador = "INSERT INTO jogador (nome, password, criado_em, salt, pontuacao, verification_token, is_verified) VALUES ('" . $nomeJogador . "', '" . $password . "', '" . $dataregisto . "', '" . $salt . "', '" . $pontuacao . "', '" . $verificationToken . "', 0)";

	// Registar utilizador com token de verificação, mas não está verificado ainda
	mysqli_query($ligacao, $qCriarUtilizador) or die("#4: Falha ao criar utilizador");

	// Send verification email
	$mail = new PHPMailer(true);

	try {
		// SMTP Configuration
		$mail->isSMTP();
		$mail->Host = 'smtp.gmail.com';
		$mail->SMTPAuth = true;
		$mail->Username = 'fatland.studio@gmail.com	';
		$mail->Password = 'jorge1234';
		$mail->SMTPSecure = 'tls';
		$mail->Port = 587;

		// Sender and recipient information
		$mail->setFrom('your_email@example.com', 'Your Name');
		$mail->addAddress($email, $nomeJogador);

		// Email content
		$mail->isHTML(true);
		$mail->Subject = 'Verification Email';
		$mail->Body = 'Click the following link to verify your email: <a href="https://yourwebsite.com/verify.php?token=' . $verificationToken . '">Verify Email</a>';

		// Send email
		$mail->send();
		echo "0"; // Success
	} catch (Exception $e) {
		echo "Error: {$mail->ErrorInfo}";
	}


?>