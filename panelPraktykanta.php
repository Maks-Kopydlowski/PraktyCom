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

</main>
</body>
</html>