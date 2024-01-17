<?php
include "connection.php";
session_start();

$loginPage = 'login.php';
$signupPage = 'singup.php';

function generatePageLink($page, $label, $params = '', $class) {
    return "<a href='$page?$params' class='$class' >$label</a>";
}
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
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>PraktyCom</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@400;500&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
</head>
<body>
<header>
    <a href="index.php" id="logo">PraktyCom</a>
    <div id="opcje">
    <?php
    if (isset($_SESSION['user_id'])) {
        if (isset($_SESSION['user_imie']) && isset($_SESSION['user_nazwisko'])) {
            $userParams = $_SESSION['user_imie'] . '.' . $_SESSION['user_nazwisko'] . '.' . $_SESSION['user_id'];
            echo generatePageLink('panelPraktykanta.php', 'Konto', $userParams, '');
        } elseif (isset($_SESSION['user_firma'])) {
            $userParams = $_SESSION['user_firma'] . '.' . $_SESSION['user_id'];
            echo generatePageLink('panelPracodawcy.php', 'Konto', $userParams, '');
        }
        echo generatePageLink('logout.php', 'Wyloguj', '', '');
    } else {
        echo generatePageLink($loginPage, 'Zaloguj się', '', '');
        echo generatePageLink($signupPage, 'Zarejestruj się', '', '');
    }
    ?>
    </div>
</header>
    <main>
    <h2>Logowanie</h2>
    <form action="" method="post" id="loginPraktykant" class="loginBox">
        <input type="email" name="email" placeholder="E-mail" class="inputText" required><br>
        <input type="password" name="haslo" placeholder="Hasło" class="inputText" required><br>
        <input type="hidden" class="typ_konta" name="typ_konta" value="praktykant">
        <input type="submit" value="Zaloguj" class="loginButton">
    </form>
    <form action="" method="post" id="loginPracodawca" class="loginBox">
        <input type="email" name="email" placeholder="E-mail" class="inputText" required><br>
        <input type="password" name="haslo" placeholder="Hasło" class="inputText" required><br>
        <input type="hidden" class="typ_konta" name="typ_konta" value="pracodawca">
        <input type="submit" value="Zaloguj" class="loginButton">
    </form>
    <div id="loginButtons">
    <button id="typKontaPraktykant">jako Praktykant</button>
    <button id="typKontaPracodawca">jako Pracodawca</button>
    </div>
    </main>
    <script src="script.js"></script>
</body>
</html>