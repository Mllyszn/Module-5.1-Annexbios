<?php
//Alle lokale films in array
$sqlresult_allMovies = $con->query("SELECT id, title, description, rating, duration, release_date, age_restriction, banner_path, price, actors FROM `films`");
$allMovies = [];

if ($sqlresult_allMovies->num_rows > 0) {
    while ($row = $sqlresult_allMovies->fetch_assoc()) {
        $allMovies[$row["id"]] = $row;
    }
    //echo '<pre>'; print_r($allMovies); echo '</pre>'; //print
}