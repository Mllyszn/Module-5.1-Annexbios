<?php
session_start();

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "annexbios_woerden_db";

$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

if ($con->connect_errno) {
    echo "Failed to connect to MySQL: " . $con->connect_error;
    exit();
}

//Alle films in array
$sqlresult_allMovies = $con->query("SELECT id, naam, film_lengte, leeftijdslimiet, release_datum, film_banners, film_rating FROM `films`");
$allMovies = [];

if ($sqlresult_allMovies->num_rows > 0) {
    while ($row = $sqlresult_allMovies->fetch_assoc()) {
        $allMovies[$row["id"]] = $row;
    }
    //echo '<pre>'; print_r($allproducts); echo '</pre>'; //print
}

//Laatste films
$sqlresult_latestMovies = $con->query("SELECT id, naam, film_lengte, leeftijdslimiet, release_datum, film_banners, film_rating FROM `films` ORDER BY id DESC LIMIT 3");
$latestMovies = [];

if ($sqlresult_latestMovies->num_rows > 0) {
    while ($row = $sqlresult_latestMovies->fetch_assoc()) {
        $latestMovies[] = $row;
    }
    //echo '<pre>'; print_r($latestproducts); echo '</pre>'; //print
}


//Totale films opgeteld
$count = $con->query("SELECT COUNT(*) FROM `films`");
$countrow = mysqli_fetch_row($count);
$totalMovies = $countrow[0];

define("BASEURL", "http://localhost/");
define("BASEURL_CMS", "http://localhost/admin/");

function prettyDump($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
}



