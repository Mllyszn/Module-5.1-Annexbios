<?php
session_start();
include('api_connect.php');

// ini_set('display_errors', 0);
// error_reporting(E_ALL & ~E_NOTICE & E_WARNING);

//Database connection
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "annexbios_woerden_db";

$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

if ($con->connect_errno) {
    echo "Failed to connect to MySQL: " . $con->connect_error;
    exit();
}

//Totale films in database opgeteld
include("fetch_local_movies.php");
//Totale films in database opgeteld
$count = $con->query("SELECT COUNT(*) FROM `films`");
$countrow = mysqli_fetch_row($count);
$totalDbMovies = $countrow[0];

//Totale films uit api opgeteld
$totalApiMovies = count($obj);

$filmRow = $totalDbMovies;

if ($filmRow < $totalApiMovies) {
    include("fetch_movies.php");
}

//Laatste films
$sqlresult_latestMovies = $con->query("SELECT id, title, description, rating, duration, release_date, age_restriction, banner_path, price, actors FROM `films` ORDER BY id DESC LIMIT 3");
$latestMovies = [];

if ($sqlresult_latestMovies->num_rows > 0) {
    while ($row = $sqlresult_latestMovies->fetch_assoc()) {
        $latestMovies[] = $row;
    }
    //echo '<pre>'; print_r($latestMovies); echo '</pre>'; //print
}

define("BASEURL", "http://localhost/");
define("BASEURL_CMS", "http://localhost/admin/");

//debug

// echo "Filmrow";
// echo $filmRow;
// echo "total DB movies";
// echo $totalDbMovies; 
// echo "</pre>";
// echo "total API movies";
// echo $totalApiMovies; 
// echo "</pre>";