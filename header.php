<?php
	$menu = '
		<li><a href="index.php"><img src="asset/img/logo.png"></a></li>
		<li><a href="movies.php">movies</a></li>
		<li><a href="serials.php">serials</a></li>
		%s
	';

	$m = '';
	if(isset($_SESSION["role"])) {
		$m = '<li><a href="cart.php">favorites</a></li>';
		$m .= ($_SESSION["role"] == "admin") ? '<li><a href="admin">Функции</a></li>' : '';
		$m .= '<li><a href="controllers/logout.php">Выход</a></li>';
	} else
		$m = '
			<li><a href="login.php"><button>Вход</button></a></li>
			<li><a href="registr.php"><button>Регистрация</button></a></li>
		';

	$menu = sprintf($menu, $m);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Интернет-магазин</title>
	<link rel="stylesheet" href="asset/css/style.css">
	<script src="scripts/filter.js"></script>
	<script>
		let role = "<?= (isset($_SESSION["role"])) ? $_SESSION["role"] : "guest" ?>";
	</script>
</head>
<body>

	<header>
		<div class="content">
			<ul>
				<?= $menu ?>
			</ul>
		</div>
	</header>

	<div class="message"><?= (isset($_GET["message"])) ? $_GET["message"] : ""; ?></div>