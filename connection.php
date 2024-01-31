<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "praktycom";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


$loginPage = 'login.php';
$signupPage = 'singup.php';
function generatePageLink($page, $label, $params = '', $class) {
    return "<a href='$page?$params' class='$class' >$label</a>";
}