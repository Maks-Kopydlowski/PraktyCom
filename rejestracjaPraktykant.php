<?php
include "connection.php";
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $imie = $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];
    $email = $_POST['email'];
    $haslo = $_POST['haslo'];
    $powtorzHaslo = $_POST['powtorzHaslo'];

    // Sprawdź, czy hasła się zgadzają
    if ($haslo !== $powtorzHaslo) {
        $_SESSION['messagePraktykant'] = "Hasła nie pasują do siebie. Proszę wprowadzić poprawne hasło.";
        header("Location: singup.php");

    } else {
        // Sprawdź istnienie użytkownika o podanym emailu.
        $sql_check = "SELECT * FROM praktykanci WHERE email='$email'";
        $result = mysqli_query($conn, $sql_check);
        if (mysqli_num_rows($result) > 0) {
            $_SESSION['messagePraktykant'] = "Użytkownik o podanym adresie E-mail już istnieje.";
            header("Location: singup.php");
        } else {
            $hashed_password = password_hash($haslo, PASSWORD_DEFAULT);
            // Wstaw dane do bazy danych.
            $sql_insert = "INSERT INTO praktykanci (email, haslo, imie, nazwisko) 
                        VALUES ('$email', '$hashed_password', '$imie', '$nazwisko')";
            if (mysqli_query($conn, $sql_insert)) {
                $_SESSION['messagePraktykant'] = "Zarejestrowano Pomyślnie!";
                header("Location: login.php");
            } else {
                $_SESSION['messagePraktykant'] = "Błąd: " . $sql_insert . "<br>" . mysqli_error($conn);
                header("Location: singup.php");

            }
        }
    }
}
?>