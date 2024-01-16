<?php
session_start();
include "connection.php"; // Połączenie z bazą danych

if(isset($_GET['id'])) {
    $id_uzytkownika = $_GET['id'];

    // Pobierz dane użytkownika na podstawie ID
    $query = "SELECT imie, nazwisko FROM praktykanci WHERE id = '$id_uzytkownika'"; // Zmodyfikuj zapytanie zgodnie z twoją strukturą bazy danych
    $result = mysqli_query($conn, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        // Wyświetlenie informacji o użytkowniku
        echo "<h1>Profil użytkownika: " . $row['imie'] . " " . $row['nazwisko'] . "</h1>";
        // Wyświetl pozostałe informacje
    } else {
        $id_uzytkownika = $_GET['id'];
        $query = "SELECT firma FROM pracodawcy WHERE id = '$id_uzytkownika'"; // Zmodyfikuj zapytanie zgodnie z twoją strukturą bazy danych
        $result = mysqli_query($conn, $query);
    
        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            // Wyświetlenie informacji o użytkowniku
            echo "<h1>Profil użytkownika: " . $row['firma'] . "</h1>";
            // Wyświetl pozostałe informacje
        }
    }
} else {
    echo "Brak ID użytkownika.";
}
?>
