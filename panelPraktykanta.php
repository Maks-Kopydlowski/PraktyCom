<?php
include "connection.php";
session_start();

$loginPage = 'login.php';
$signupPage = 'singup.php';

function generatePageLink($page, $label, $params = '', $class) {
    return "<a href='$page?$params' class='$class' >$label</a>";
}
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
        echo generatePageLink('logout.php', 'Wyloguj', '', '');
    } else {
        header("Location: index.php");
    }
    ?>
    </div>
</header>
<main>
<form action="upload.php" method="post" enctype="multipart/form-data">
    Wybierz obraz:
    <input type="file" name="image" id="image">
    <input type="submit" value="Prześlij obraz" name="submit">
</form>
<?php
if (isset($_SESSION['user_id'])) {
    $userId = $_SESSION['user_id'];

    // Pobierz obraz bezpośrednio z bazy danych na podstawie identyfikatora użytkownika
    $sql = "SELECT zdjecie FROM praktykanci WHERE id = $userId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $imageData = $row['zdjecie'];

        // Ustawienie nagłówka Content-type na typ obrazu
        header("Content-type: image/jpeg");

        // Wyświetlanie obrazu
        echo base64_decode($imageData);
    } else {
        // Jeśli brak obrazu, wyświetl domyślowe zdjęcie profilowe lub komunikat
        // Możesz zastąpić poniższą ścieżkę do domyślnego obrazu lub dostosować komunikat
        echo file_get_contents("default_profile_image.jpg");
    }
} else {
    // Jeśli użytkownik niezalogowany, wyświetl domyślowe zdjęcie profilowe lub komunikat
    // Możesz zastąpić poniższą ścieżkę do domyślnego obrazu lub dostosować komunikat
    echo file_get_contents("default_profile_image.jpg");
}

$conn->close();
?>
</main>
</body>
</html>