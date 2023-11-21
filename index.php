<?php
	session_start();
	include "connect.php";

	include "header.php";
?>

	<main>
		<div class="content">

        <form method="get" action="search.php">
 <input type="text" name="q" placeholder="films, serials..." required>
 <button type="submit">search</button>
</form>

        <div class="head" style="margin-bottom: 10px">We reccomend</div>
		<img src="asset/img/image32.png">

<div class="head" style="margin-bottom: 10px">Popular serials</div>
<section class="block_house">
    <div class="house"> 
        <img src="asset/img/image4.png" alt=""> 
        <div class="name_house">skam</div> 
    </div>

    <div class="house">
        <img src="asset/img/image3.png" alt=""> 
        <div class="name_house">cilek kokusu</div> 
    </div>

    <div class="house">
        <img src="asset/img/image5.png" alt=""> 
        <div class="name_house">wednesday</div> 
    </div>
</section>

<div class="head" style="margin-bottom: 10px">Top films</div>
<section class="block_house">
    <div class="house"> 
        <img src="asset/img/image7.png" alt=""> 
        <div class="name_house">the fault in our stars </div> 
    </div>

    <div class="house">
        <img src="asset/img/image6.png" alt=""> 
        <div class="name_house">midnight sun</div> 
    </div>

    <div class="house">
        <img src="asset/img/image1.png" alt=""> 
        <div class="name_house">forrest gump</div> 
    </div>
</section>

<div class="head" style="margin-bottom: 10px">Categories</div>

<section class="block_category">
	<div class="category"> 
		<img src="asset/img/image10.png" alt=""> 
		<div class="name_category">Films</div> 
</div>

	<div class="category">
		<img src="asset/img/image8.png" alt=""> 
		<div class="name_category">Serials</div> 
	</div>
</section>

</div>

		</div>
	</main>

	<script src="scripts/slider.js"></script>

<?php include "footer.php" ?>