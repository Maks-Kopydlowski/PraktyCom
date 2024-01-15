
<?php
    include "connection.php"
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
                <li><a href="login.php">Zaloguj się</a></li>
                <li><a href="singup.php">Zarejestruj się</a></li>
            </ul>
        </div>
    </header>
    <main>
    <?php
    include "connection.php";

    // Sprawdzenie czy zostało przekazane ID ogłoszenia w parametrze URL
    if(isset($_GET['id'])) {
        $id_ogloszenia = $_GET['id'];

        // Zapytanie SQL pobierające szczegóły ogłoszenia na podstawie ID
        $query = "SELECT oferty.id AS oferta_id, oferty.tytul AS tytul, oferty.opis AS opis, oferty.lokalizacja AS lokalizacja, oferty.poziom AS poziom, pracodawcy.firma AS firma
                  FROM oferty
                  INNER JOIN pracodawcy ON oferty.id_pracodawcy = pracodawcy.id
                  WHERE oferty.id = ?";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, "i", $id_ogloszenia);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        // Wyświetlenie szczegółów ogłoszenia
        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $tytul = $row['tytul'];
            $firma = $row['firma'];
            $lokalizacja = $row['lokalizacja'];
            $poziom = $row['poziom'];
            $opis = $row['opis'];

            // Wyświetlenie szczegółów ogłoszenia
            echo '<h1>' . $tytul . '</h1>';
            echo '<h2>' . $firma . ', ' . $lokalizacja . '</h2>';
            echo '<h2>Poziom: ' . $poziom . '</h2>';
            echo '<p>' . $opis . '</p>';
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

