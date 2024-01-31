<?php
include "connection.php";
include "checkData.php";

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
    <div id="ogloszenia">
        <?php
        $ofertyNaStrone = 10;

        if (isset($_GET['strona'])) {
            $strona = $_GET['strona'];
        } else {
            $strona = 1;
        }

        $poczatek = ($strona - 1) * $ofertyNaStrone;
        $query = "SELECT oferty.id AS oferta_id, oferty.tytul AS tytul, oferty.lokalizacja AS lokalizacja, pracodawcy.firma AS firma, pracodawcy.id AS id
                  FROM oferty
                  INNER JOIN pracodawcy ON oferty.id_pracodawcy = pracodawcy.id
                  ORDER BY oferty.id DESC
                  LIMIT $poczatek, $ofertyNaStrone";

        $result = mysqli_query($conn, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $id_ogloszenia = $row['oferta_id'];
                $tytul = $row['tytul'];
                $firma = $row['firma'];
                $firmaId = $row['id'];
                $lokalizacja = $row['lokalizacja'];
                echo '<div class="ogloszenie" onclick="location.href=\'jobad.php?id=' . $id_ogloszenia . '\'">';
                echo '<div class="tytulOferty">';
                echo '<p class="tytul">' . $tytul . '</p>';
                echo '</div>';
                echo '<div class="daneOferty">';
                $userParams = "firma=".$firma . '&id=' . $firmaId;
                echo generatePageLink('panelPracodawca.php', $firma, $userParams, '');
                echo '<p>, ' . $lokalizacja . '</p>';
                echo '</div>';
                echo '</div>';
            }
        } else {
            echo "Brak danych lub błąd zapytania.";
        }

        $query = "SELECT COUNT(id) AS ilosc_ofert FROM oferty";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $ilosc_ofert = $row['ilosc_ofert'];
        $liczba_stron = ceil($ilosc_ofert / $ofertyNaStrone);

        echo "<div class='numery'>";
        if ($liczba_stron > 1) {
            if($strona > 1){
            echo generatePageLink('index.php', '&laquo;&laquo;', '', '');
            }
            if ($strona > 1) {
                $poprzednia = $strona - 1;
                echo generatePageLink('index.php', '&laquo;', "strona=$poprzednia", '');
            }
            for ($i = 1; $i <= $liczba_stron; $i++) {
                if ($i == $strona) {
                    echo generatePageLink('index.php', $i, "strona=$i", 'przyciskiStrony active');
                } else {
                    echo generatePageLink('index.php', $i, "strona=$i", 'przyciskiStrony');
                }
            }
            if ($strona < $liczba_stron) {
                $nastepna = $strona + 1;
                echo generatePageLink('index.php', '&raquo;', "strona=$nastepna", '');
            }
            if($strona != $liczba_stron){
            echo generatePageLink('index.php', '&raquo;&raquo;', "strona=$liczba_stron", '');
            }
        }
        echo "</div>";
        ?>
    </div>
</main>
    <script src="script.js"></script>
</body>
</html>