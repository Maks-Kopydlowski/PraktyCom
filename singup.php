<?php
    include "connection.php";
    session_start();
?>
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
<body>
    <header>
        <div id="logo"><h1><a href="index.php">PraktyCom</a></h1></div>
    </header>
    <main id="mainRejestracja">
        <div id="praktykantRejestracja" class="formularzRejestracja">
        <h3>Zarejestruj jako Praktykant</h3>
            <form action="rejestracjaPraktykant.php" method="post">
                <input type="text" placeholder="Imię" id="imie" name="imie" required>
                <input type="text" placeholder="Nazwisko" id="nazwisko" name="nazwisko" required>
                <input type="email" placeholder="E-mail" id="email" name="email" required>
                <input type="password" placeholder="Hasło" name="haslo" id="haslo" required>
                <input type="password" placeholder="Powtórz hasło" name="powtorzHaslo" id="powtorzHaslo" required>
                <input type="submit" value="Zarejestruj" id="submit" class="button">
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
                <li>Natychmiastowe aplikowanie na oferty.</li>
                <li>Zapisanie CV i listu motywacyjnego w jednym miejscu.</li>
                <li>System zapisywania interesujących ofert.</li>
            </ul>
        </div>
        <div id="pracodawcaRejestracja" class="formularzRejestracja">
        <h3>Zarejestruj jako Pracodawca</h3>
            <form action="rejestracjaPracodawca.php" method="post">
                <input type="text" placeholder="Firma" id="firma" name="firma" required>
                <input type="email" placeholder="E-mail" id="email" name="email" required>
                <input type="password" placeholder="Hasło" name="haslo" id="haslo" required>
                <input type="password" placeholder="Powtórz hasło" name="powtorzHaslo" id="powtorzHaslo"required>
                <input type="submit" value="Zarejestruj" id="submit" class="button">
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
                <li>Łatwe dodawanie ofert.</li>
                <li>Licznik ile razy dana oferta była otwarta.</li>
                <li>System zarządzania rekrutowanymi.</li>
            </ul>
        </div>

    </main>
    <script src="script.js"></script>
</body>
</html>
