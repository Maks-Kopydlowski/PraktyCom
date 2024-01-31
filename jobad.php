<?php
include "connection.php";
// include "checkData.php";
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
    <?php
    if(isset($_GET['id'])) {
        $id_ogloszenia = $_GET['id'];
        $query = "SELECT oferty.id AS oferta_id, oferty.tytul AS tytul, oferty.opis AS opis, oferty.lokalizacja AS lokalizacja, pracodawcy.firma AS firma, pracodawcy.id AS id
                  FROM oferty
                  INNER JOIN pracodawcy ON oferty.id_pracodawcy = pracodawcy.id
                  WHERE oferty.id = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, "i", $id_ogloszenia);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $tytul = $row['tytul'];
            $firma = $row['firma'];
            $lokalizacja = $row['lokalizacja'];
            $firmaId = $row['id'];
            $opis = $row['opis'];
            echo '<h1>' . $tytul . '</h1>';
            $userParams = "firma=".$firma . '&id=' . $firmaId;
            echo '<h2>'.generatePageLink('panelPracodawca.php', $firma, $userParams, '').", ".$lokalizacja.'</h2>';
            echo '<pre>' . $opis . '</pre>';
            echo '<button class="aplikuj">APLIKUJ</button>';
        } else {
            echo "Brak danych lub błąd zapytania.";
        }
    } else {
        echo "Brak ID ogłoszenia.";
    }
    ?>
    </main>
    <script src="script.js"></script>
</body>
</html>

