<?php
// Sprawdzenie, czy coś zostało przesłane za pomocą GET
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // Wyświetlenie wszystkich danych przesłanych za pomocą GET
    echo "Dane przesłane za pomocą metody GET:";
    echo "<pre>";
    print_r($_GET);
    echo "</pre>";
} else {
    echo "Brak danych przesłanych za pomocą metody GET.<br>";
}
// Sprawdzenie, czy coś zostało przesłane za pomocą POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Wyświetlenie wszystkich danych przesłanych za pomocą POST
    echo "Dane przesłane za pomocą metody POST:";
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
} else {
    echo "Brak danych przesłanych za pomocą metody POST.<br>";
}

if (!empty($_SESSION)) {
    // Wyświetl wszystkie dane w $_SESSION
    echo "Zawartość tablicy \$_SESSION:<br>";
    echo "<pre>";
    print_r($_SESSION);
    echo "</pre>";
} else {
    echo "Brak danych w tablicy \$_SESSION.";
}
?>
