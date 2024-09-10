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

//Alle producten in array
$sqlresult_allproducts = $con->query("SELECT id, name, description, SKU, category_id, price, product_image FROM `producten`");
$allproducts = [];

if ($sqlresult_allproducts->num_rows > 0) {
    while ($row = $sqlresult_allproducts->fetch_assoc()) {
        $allproducts[$row["id"]] = $row;
    }
    //echo '<pre>'; print_r($allproducts); echo '</pre>'; //print
}

//Laatste producten
$sqlresult_latestproducts = $con->query("SELECT id, name, description, SKU, category_id, price, product_image FROM `producten` ORDER BY id DESC LIMIT 3");
$latestproducts = [];

if ($sqlresult_latestproducts->num_rows > 0) {
    while ($row = $sqlresult_latestproducts->fetch_assoc()) {
        $latestproducts[] = $row;
    }
    //echo '<pre>'; print_r($latestproducts); echo '</pre>'; //print
}


//Totale producten opgeteld
$count = $con->query("SELECT COUNT(*) FROM `producten`");
$countrow = mysqli_fetch_row($count);
$totalproducts = $countrow[0];

define("BASEURL", "http://localhost/");
define("BASEURL_CMS", "http://localhost/admin/");

function prettyDump($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
}



