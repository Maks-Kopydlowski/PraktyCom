<?php
session_start();
include "connection.php"; // Połączenie z bazą danych

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obsługa logowania, sprawdzenie danych użytkownika, np. email i hasło

    // Przykładowe pobranie ID użytkownika po zalogowaniu
    $id_uzytkownika = 1; // Pobierz ID z bazy danych na podstawie danych logowania

    // Przekierowanie do profilu po zalogowaniu
    header("Location: profil.php?id=" . $id_uzytkownika);
    exit();
}
?>
<!-- Tworzenie formularza logowania -->
<!DOCTYPE html>
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
    <h2>Logowanie</h2>
    <form action="" method="post">
        <!-- Pola formularza logowania -->
        <input type="email" name="email" placeholder="E-mail" required><br>
        <input type="password" name="haslo" placeholder="Hasło" required><br>
        <input type="submit" value="Zaloguj">
    </form>
</body>
</html>
