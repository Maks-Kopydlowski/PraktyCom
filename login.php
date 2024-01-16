<?php
session_start();
include "connection.php"; // Połączenie z bazą danych

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $haslo = $_POST['haslo'];
    $typ_konta = $_POST['typ_konta']; // Nowe pole wyboru dla typu konta

    if ($typ_konta === 'praktykant') {
        $tabela = 'praktykanci';
    } elseif ($typ_konta === 'pracodawca') {
        $tabela = 'pracodawcy';
    } else {
        echo "Niepoprawny typ konta.";
        exit();
    }

    $query = "SELECT * FROM $tabela WHERE email = '$email'";
    $result = mysqli_query($conn, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($haslo, $row['haslo'])) {
            // Użytkownik zalogowany poprawnie - zapisz dane w sesji lub przekieruj go do odpowiedniej strony po zalogowaniu
            $_SESSION['user_id'] = $row['id'];


            if ($typ_konta === 'praktykant') {
                $_SESSION['user_imie'] = $row['imie'];
                $_SESSION['user_nazwisko'] = $row['nazwisko'];
                // header("Location: panelPraktykanta.php?user=".$row['imie'].'.'.$row['nazwisko'].'.'.$row['id']);
                header("Location: index.php");
            } elseif ($typ_konta === 'pracodawca') {
                $_SESSION['user_firma'] = $row['id'];
                header("Location: index.php");
                // header("Location: panelPracodawcy.php?user=".$row['firma'].'.'.$row['firma']);
            }
            exit();
        } else {
            echo "Niepoprawne dane logowania.";
        }
    } else {
        echo "Użytkownik o podanym adresie email nie istnieje.";
    }
}
?>
<!-- Formularz logowania dla praktykantów i pracodawców -->
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.scss">
    <title>PraktyCom</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400;500&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
</head>
    <title>Logowanie</title>
</head>
<body>
    <header>
        <div id="logo"><h1><a href="index.php">PraktyCom</a></h1></div>
        <div id="login"><img src="img/user.png" alt="Zaloguj"></div>    
    </header>
    <main id="mainLogowanie">
    <h2>Logowanie</h2>
    <form action="" method="post" id="loginPraktykant">
        <input type="email" name="email" placeholder="E-mail" required><br>
        <input type="password" name="haslo" placeholder="Hasło" required><br>
        <input type="hidden" id="typ_konta" name="typ_konta" value="praktykant">
        <input type="submit" value="Zaloguj">
    </form>
    <form action="" method="post" id="loginPracodawca">
        <input type="email" name="email" placeholder="E-mail" required><br>
        <input type="password" name="haslo" placeholder="Hasło" required><br>
        <input type="hidden" id="typ_konta" name="typ_konta" value="pracodawca">
        <input type="submit" value="Zaloguj">
    </form>
    <div id="loginButtons">
    <button id="typKontaPraktykant">jako Praktykant</button>
    <button id="typKontaPracodawca">jako Pracodawca</button>
    </div>
    </main>
    <script src="script.js"></script>
</body>
</html>