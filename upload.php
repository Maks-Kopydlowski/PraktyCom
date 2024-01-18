<?php
include "connection.php";
session_start();

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $image = file_get_contents($_FILES['image']['tmp_name']);
    $image = base64_encode($image);
    $idUzytkownik = $_SESSION['user_id'];

    // $sql = "INSERT INTO praktykanci (zdjecie, id) VALUES ('$image', $idUzytkownik)";
    $sql = "UPDATE praktykanci SET zdjecie = '$image' WHERE id = $idUzytkownik";
    $result = $conn->query($sql);

    if ($result === TRUE) {
        echo "Obraz został dodany do bazy danych.";
    } else {
        echo "Błąd: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
?>
