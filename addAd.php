<?php
include "connection.php";
// include "checkData.php";
session_start();

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
            $userParams = "firma=" . $_SESSION['user_firma'] . '&id=' . $_SESSION['user_id'];
            echo generatePageLink('panelPracodawca.php', 'Konto', $userParams, '');
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
    
    <div class="dodajOgloszenie">
    <h2>Dodaj ogłoszenie</h2>
    <form action="addAd.php" method="post">
        <label for="tytul">Tytuł</label>
        <input type="text" name="tytul" id="tutul" required>
        <label for="tresc">Treść</label>
        <textarea name="tresc" id="tresc" cols="160" rows="30"></textarea>
        <label for="tytul">Lokalizacja</label>
        <input type="text" name="lokalizacja" id="lokalizacja" required>
        <input type="submit" value="Opublikuj" class="opublikujButton">
    </form>
    </div>
    <?php
    if (isset($_SESSION['user_id']) && isset($_POST['tresc'])) {
        
        // Pobierz dane z formularza
        $tytul = $_POST['tytul'];
        $opis = $_POST['tresc'];
        $lokalizacja = $_POST['lokalizacja'];
        $id_pracodawcy = $_SESSION['user_id']; // Załóżmy, że 'user_id' to identyfikator zalogowanego użytkownika
        
        // Przygotuj zapytanie SQL
        $sql_insert = "INSERT INTO oferty (tytul, opis, lokalizacja, id_pracodawcy) VALUES ('$tytul', '$opis', '$lokalizacja', '$id_pracodawcy')";
            if (mysqli_query($conn, $sql_insert)) {
                $_SESSION['messageAd'] = "Dodano Pomyślnie!";
                // header("Location: addAd.php");
            } else {
                $_SESSION['messageAd'] = "Błąd, prosimy spróbować ponownie!";
                // header("Location: addAd.php");

            }
    }
    if(isset($_SESSION['messageAd'])) {
        echo $_SESSION['messageAd'];
        unset($_SESSION['messageAd']);
    }
    ?>
</main>
    <script src="script.js"></script>
</body>
</html>