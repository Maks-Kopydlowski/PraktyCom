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
        <div id="login"><img src="img/user.png" alt="Zaloguj"></div>
        <div id="opcje">
            <ul>
                <?php
                if(isset($_SESSION['user_imie']) && $_SESSION['user_nazwisko'] && $_SESSION['user_id']){
                    echo "<li><form action='logout.php' method='post'><input type='submit' value='Wyloguj się' id='wyloguj'></form></li>";
                    echo '<a href="panelPraktykanta.php?user='.$_SESSION['user_imie'].'.'.$_SESSION['user_nazwisko'].'.'.$_SESSION['user_id'] . '">Konto</a>';
                }else if(isset($_SESSION['user_firma']) && $_SESSION['user_id']){
                    echo "<li><form action='logout.php' method='post'><input type='submit' value='Wyloguj się' id='wyloguj'></form></li>";
                    echo '<a href="panelPracodawcy.php?user='.$_SESSION['user_firma'].'.'.$_SESSION['user_id'] . '">Konto</a>';
                }else{
                    echo "<li><a href='login.php'>Zaloguj się</a></li>";
                    echo "<li><a href='singup.php'>Zarejestruj się</a></li>";
                }
                ?>

            </ul>
        </div>
    </header>
    <main>
        <div id="oglsozenia">
        <?php
        $ofertyNaStrone = 10;

        if (isset($_GET['strona'])) {
            $strona = $_GET['strona'];
        } else {
            $strona = 1;
        }

        $poczatek = ($strona - 1) * $ofertyNaStrone;

        $query = "SELECT oferty.id AS oferta_id, oferty.tytul AS tytul, oferty.lokalizacja AS lokalizacja, oferty.poziom AS poziom, pracodawcy.firma AS firma, pracodawcy.id AS id
                  FROM oferty
                  INNER JOIN pracodawcy ON oferty.id_pracodawcy = pracodawcy.id
                  ORDER BY oferty.id DESC
                  LIMIT $poczatek, $ofertyNaStrone";

        $result = mysqli_query($conn, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $id_ogloszenia = $row['oferta_id']; // ID ogłoszenia
                $tytul = $row['tytul'];
                $firma = $row['firma'];
                $firmaId = $row['id'];
                $lokalizacja = $row['lokalizacja'];
                $poziom = $row['poziom'];
                echo '<div class="ogloszenie">';
                echo '<a href="jobad.php?id=' . $id_ogloszenia . '">' . $tytul . '<p>'.$poziom.'</p></a>';
                echo '<div id="daneOferty"><a href="panelPracodawca.php?'.$firma.'.'.$firmaId.'">'.$firma.'</a>, <p>'.$lokalizacja.'</p>';
                if(isset($_SESSION['user_imie']) && $_SESSION['user_nazwisko'] && $_SESSION['user_id']){
//SYSTEM POLUBIEŃ - GWIAZDKA
                }
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
            // Tworzenie linków do stron
        echo "<div id='numery'>";
        if ($liczba_stron > 1) {
            // Przycisk do pierwszej strony
            echo "<a href='index.php?strona=1' id='pierwszaStrona' class='przyciskiStrony'>&laquo;&laquo;</a> ";
            // Przycisk do poprzedniej strony
            if ($strona > 1) {
                $poprzednia = $strona - 1;
                echo "<a href='index.php?strona=$poprzednia' id='poprzedniaStrona' class='przyciskiStrony'>&laquo;</a> ";
            }
            // Linki do kolejnych stron
            for ($i = 1; $i <= $liczba_stron; $i++) {
                if ($i == $strona) {
                    echo "<span class='active'>$i</span> ";
                } else {
                    echo "<a href='index.php?strona=$i' class='przyciskiStrony'>$i</a> ";
                }
            }
            // Przycisk do następnej strony
            if ($strona < $liczba_stron) {
                $nastepna = $strona + 1;
                echo "<a href='index.php?strona=$nastepna' id='nastepnaStrona' class='przyciskiStrony'>&raquo;</a> ";
            }
            // Przycisk do ostatniej strony
            echo "<a href='index.php?strona=$liczba_stron' id='ostatniaStrona' class='przyciskiStrony'>&raquo;&raquo;</a> ";
        }
        echo "</div>";
    ?>
    </div>
    </main>
    <script src="script.js"></script>
</body>
</html>