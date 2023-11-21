<?php
	include "controllers/check.php";

	include "connect.php";

	$sql = sprintf("SELECT `order_id`, `product_id`, `orders`.`count`, `name`, `price`, `path` FROM `orders` INNER JOIN `products` USING(`product_id`) WHERE `user_id`='%s'", $_SESSION["user_id"]);
	$result = $connect->query($sql);

	$products = "";
	while($row = $result->fetch_assoc())
		$products .= sprintf('
			<div class="col">
				<img src="%s" alt="">
				<div class="row">
					<h3><a href="product.php?id=%s">%s</a></h3>
					<p>%s</p>
				</div>
				<div class="row">
					<p><a href="controllers/delete_cart.php?id=%s">Убрать</a></p>
				</div>
			</div>
		', $row["path"], $row["product_id"], $row["name"], $row["price"], $row["product_id"], $row["count"], $row["product_id"]);

	if($products == "")
		$products = '<h3 class="text-center">Пусто</h3>';

	$sql = sprintf("SELECT * FROM `orders` WHERE `user_id`='%s' AND `number` IS NOT NULL AND `product_id`=0 ORDER BY `created_at` DESC", $_SESSION["user_id"]);
	$result = $connect->query($sql);


	include "header.php";
?>

	<main>
	<?php 
	include "connect.php";
	session_start();
	$user_id=$_SESSION["user_id"];
	$sql = "SELECT * FROM `users` WHERE `user_id` = '".$user_id."'";
	if($result = $connect->query($sql)) {
		while ($row = $result->fetch_assoc()) {?>
		<div class="content">
		<div class="row_with_tarif" style="display:flex;flex-direction:row; justify-content:space-between;">
		<h1> tarif: <?php echo $row["tarif"];?></h1>
		<a href="page_change_tarif.php">Сменить тариф</a>
		<h1> payment method: <?php echo $row["card"];?></h1>
		<a href="page_change_tarif.php">Сменить оплату</a>
		</div>
		<?php } } else{
			echo "<h1>ERROR</h1>";
			}?>
			<div class="head">favorites</div>
			<div class="row">
				<?= $products ?>
			</div>
			<br>

		</div>
	</main>

<?php include "footer.php" ?>