<?php

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    // Load Composer's autoloader
    require '../vendor/autoload.php';

    // Simplified database connection
    $ligacao = mysqli_connect('localhost', 'root', '', 'gamebd');

    if (mysqli_connect_errno()) {
        echo "#1: Erro ligação BD";
        exit();
    }

    // Get the verification token from the URL
    $verificationToken = $_GET['token'];

    // Check if the token is valid
    $qVerificaToken = "SELECT * FROM jogador WHERE verification_token = '" . $verificationToken . "' AND is_verified = 0";
    $result = mysqli_query($ligacao, $qVerificaToken) or die("#5: Falha ao verificar o token");

    if (mysqli_num_rows($result) > 0) {
        // Token is valid, update the database to mark the user as verified
        $row = mysqli_fetch_assoc($result);
        $userId = $row['id_jogador'];
        
        $qUpdateVerification = "UPDATE jogador SET is_verified = 1 WHERE id_jogador = $userId";
        mysqli_query($ligacao, $qUpdateVerification) or die("#6: Falha ao atualizar o estado de verificação");

        echo "Verification successful! You can now log in.";
    } else {
        echo "Invalid verification token or user already verified.";
    }
?>