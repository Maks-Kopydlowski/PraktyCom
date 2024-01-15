<?php
session_start();
include "polaczenie.php"; // Połączenie z bazą danych

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_SESSION['email'])) {
        header("Location: konto.php"); // Przekierowanie, jeśli użytkownik jest już zalogowany
        exit();
    }

    $email = $_POST['email'];
    $haslo = $_POST['haslo'];
    $sql = "SELECT * FROM uzytkownik WHERE email='$email'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($haslo, $row['haslo'])) {
            $_SESSION['email'] = $email; // Utworzenie sesji dla zalogowanego użytkownika
            header("Location: konto.php");
            exit();
        } else {
            echo $row['haslo'];
            echo "Niepoprawne hasło";
        }
    } else {
        echo "Użytkownik o podanym adresie email nie istnieje.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
    <h2>Logowanie</h2>
    <form action="zaloguj.php" method="post">
        <input type="email" name="email" placeholder="E-mail" required><br>
        <input type="password" name="haslo" placeholder="Hasło" required><br>
        <input type="submit" value="Zaloguj">
    </form>
</body>
</html>
