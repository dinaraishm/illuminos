<?php 
include "../connect.php";
session_start();
$user_id=$_SESSION["user_id"];

if ($conn->connect_error) {
    die("Ошибка подключения: " . $conn->connect_error);
}
$card=$_POST['card'];
echo $card;
$sql = "UPDATE users SET card = '$card' WHERE user_id = '".$user_id."'";
if ($result = $connect->query($sql)) {
    echo "Запись успешно изменена";
} else {
    echo "Ошибка при изменении записи: " . $conn->error;
}

// Закрытие соединения с базой данных
$connect->close();
header("Location: ../cart.php") ;
?>