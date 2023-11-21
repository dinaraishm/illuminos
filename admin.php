<?php
	include "controllers/check_admin.php";
	include "connect.php";

	$sql = "SELECT * FROM `categories`";
	$result = $connect->query($sql);

	include "header.php";
?>

	<main>
		<div class="content">
			<div class="head">Категории</div>
			<form action="controllers/category_add.php" method="POST">
				<div class="part">
					<input type="text" placeholder="Название категории" name="category" required>
					<button>Добавить</button>
				</div>
			</form>
			<form action="controllers/category_delete.php" method="POST">
				<div class="part">
					<select name="category" required>
						<option value selected disabled>Категории</option>
						<?= $categories ?>
					</select>
					<button>Удалить</button>
				</div>
			</form>

			<div class="head">Добавить фильм/сериал</div>
			<form enctype="multipart/form-data" action="controllers/add_product.php" method="POST">
				<input type="text" placeholder="Название" name="name" required>
				<input type="text" placeholder="Оценка и похожие фильмы" name="price" required>
				<input type="text" placeholder="Актеры" name="country" required>
				<input type="text" placeholder="Коротко о фильме" name="year" required>
				<input type="text" placeholder="Тип" name="model" required>
				<select name="category" required>
					<option value selected disabled>Категория</option>
					<?= $categories ?>
				</select>
				<p class="text-left">Фотография товара</p>
				<input type="file" name="image" required>
				<button>Добавить</button>
			</form>


		</div>
	</main>

	<script>filter.orders()</script>

<?php include "footer.php" ?>