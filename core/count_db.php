<?php
//Totale films in database opgeteld
$count = $con->query("SELECT COUNT(*) FROM `films`");
$countrow = mysqli_fetch_row($count);
$totalDbMovies = $countrow[0];