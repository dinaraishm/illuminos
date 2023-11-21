<?php
session_start();
// Подключение к базе данных
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "php";
$conn = new mysqli($servername, $username, $password, $dbname);
// Получение списка товаров из базы данных
if ($_SERVER["REQUEST_METHOD"] == "GET") {
 $search_query = $_GET["q"];
 $sql = "SELECT * FROM products WHERE name LIKE 
'%$search_query%'";
 $result = $conn->query($sql);
}
?>
<!-- Таблица со списком найденных товаров -->
<table>
 <thead>
 <tr>
 <th>Название </th>
 <th>Описание </th>
 <th>Оценка</th>
 <th>Тип</th>
 <th>Жанр</th>
 </tr>
 </thead>
 <tbody>
 <?php while ($row = $result->fetch_assoc()) { ?>
 <tr>
 <td><?php echo $row["name"]; ?></td>
 <td><?php echo $row["year"]; ?></td>
 <td><?php echo $row["price"]; ?></td>
 <td><?php echo $row["model"]; ?></td>
 <td><?php echo $row["category"]; ?></td>
 <td>
 </td>
 </tr>
 <?php } ?>
 </tbody>
</table>
