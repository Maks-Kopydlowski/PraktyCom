<?php
    include "connection.php";
    session_start();
$loginPage = 'login.php';
$signupPage = 'singup.php';


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
                        $userParams = "imie=".$_SESSION['user_imie'] . '&nazwisko=' . $_SESSION['user_nazwisko'] . '&id=' . $_SESSION['user_id'];

            echo generatePageLink('panelPraktykanta.php', 'Konto', $userParams, '');
        } elseif (isset($_SESSION['user_firma'])) {
            $userParams = "nazwa=".$_SESSION['user_firma'] . '&id=' . $_SESSION['user_id'];
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
    <div class="rejestracjaBox">
        <div id="praktykantRejestracja" class="formularzRejestracja">
        <h3>Zarejestruj jako Praktykant</h3>
            <form action="rejestracjaPraktykant.php" method="post">
                <input type="text" placeholder="Imię" id="imie" name="imie" required>
                <input type="text" placeholder="Nazwisko" id="nazwisko" name="nazwisko" required>
                <input type="email" placeholder="E-mail" class="email" name="email" required>
                <input type="password" placeholder="Hasło" name="haslo" class="haslo" required>
                <input type="password" placeholder="Powtórz hasło" name="powtorzHaslo" class="powtorzHaslo" required><br>
                <input type="submit" value="Zarejestruj" class="button">
            </form>
            <?php
            if(isset($_SESSION['messagePraktykant'])) {
                echo $_SESSION['messagePraktykant'];
                unset($_SESSION['messagePraktykant']);
            }
            ?>
        </div>
        <div id="praktykantOpis" class="opisy">
            <p>Co daje rejestracja w serwisie jako Praktykant?</p>
            <ul>
                <li>Natychmiastowe aplikowanie na oferty. - wkrótce!</li>
                <li>Zapisanie CV i listu motywacyjnego w jednym miejscu. - wkrótce!</li>
                <li>System zapisywania interesujących ofert. - wkrótce!</li>
            </ul>
        </div>
        <div id="pracodawcaRejestracja" class="formularzRejestracja">
        <h3>Zarejestruj jako Pracodawca</h3>
            <form action="rejestracjaPracodawca.php" method="post">
                <input type="text" placeholder="Firma" id="firma" name="firma" required>
                <input type="email" placeholder="E-mail" class="email" name="email" required>
                <input type="password" placeholder="Hasło" name="haslo" class="haslo" required>
                <input type="password" placeholder="Powtórz hasło" name="powtorzHaslo" class="powtorzHaslo"required><br>
                <input type="submit" value="Zarejestruj" class="button">
            </form>
            <?php
            if(isset($_SESSION['messagePracodawca'])) {
                echo $_SESSION['messagePracodawca'];
                unset($_SESSION['messagePracodawca']);
            }
            ?>
        </div>
        <div id="pracodawcaOpis" class="opisy">
            <p>Co daje rejestracja w serwisie jako Pracodawca?</p>
            <ul>
                <li>Łatwe dodawanie ofert. - wkrótce!</li>
                <li>Licznik ile razy dana oferta była otwarta. - wkrótce!</li>
                <li>System zarządzania rekrutowanymi. - wkrótce!</li>
            </ul>
        </div>
    </div>
</main>
    <!-- <script src="script.js"></script> -->
</body>
</html>
