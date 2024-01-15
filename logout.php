<?php
session_start();
session_unset(); // Usunięcie wszystkich zmiennych sesji
session_destroy(); // Zniszczenie sesji

// Przekierowanie użytkownika po wylogowaniu
header("Location: index.php"); // Zmień 'index.php' na stronę, na którą chcesz przekierować po wylogowaniu
exit();
?>
