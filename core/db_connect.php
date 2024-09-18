<?php
session_start();
include('api_connect.php');

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

// $i = 1;
// while($i <= $totalApiMovies){
//     if($obj[$filmRow]['id'] == $totalApiMovies){
//         if(!array_key_exists($i, $allMovies)){
//             $id = $obj[$i]['id'];
//             $title = $obj[$i]['title'];
//             $description = $obj[$i]['description'];
//             $rating = $obj[$i]['rating'];
//             $duration = $obj[$i]['duration'];
//             $release_date = $obj[$i]['release_date'];
//             $age_restriction = $obj[$i]['age_restriction'];
//             $banner_path = $obj[$i]['banner_path'];
//             $price = $obj[$i]['price'];
//             $actors = 'empty';
//             $sql = "INSERT INTO films VALUES ('$id', '$title', '$description', '$rating', '$duration', '$release_date', '$age_restriction', '$banner_path', '$price', '$actors')";
        
//              $insertqry = $con->prepare($sql);
//              if($insertqry === false) {
//               echo mysqli_error($con);
//               } else{
//              if($insertqry->execute()){
//                 echo "OK, opdracht uitgevoerd";
//              }
//              $insertqry->close();
//                     }
//         }
//         $i++;
//     } else break;
// }

while($filmRow < $totalApiMovies){
    if($obj[$filmRow]['id'] > $totalApiMovies)
    break;

    if($filmRow + 1 == $obj[$filmRow]['id'] ) //if current fetching movie is equal to the movie in API
      if($obj[$filmRow] == true){
        $id = $obj[$filmRow]['id'];
        $title = $obj[$filmRow]['title'];
        $description = $obj[$filmRow]['description'];
        $rating = $obj[$filmRow]['rating'];
        $duration = $obj[$filmRow]['duration'];
        $release_date = $obj[$filmRow]['release_date'];
        $age_restriction = $obj[$filmRow]['age_restriction'];
        $banner_path = $obj[$filmRow]['banner_path'];
        $price = $obj[$filmRow]['price'];
        $actors = 'empty';
        $sql = "INSERT INTO films VALUES ('$id', '$title', '$description', '$rating', '$duration', '$release_date', '$age_restriction', '$banner_path', '$price', '$actors')";
    
         $insertqry = $con->prepare($sql);
         if($insertqry === false) {
          echo mysqli_error($con);
          } else{
         if($insertqry->execute()){
            echo "OK, opdracht uitgevoerd";
         }
         $insertqry->close();
                }

        $filmRow++;
        include("fetch_local_movies.php");
         } 

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


echo "Filmrow";
echo $filmRow;
echo "total DB movies";
echo $totalDbMovies; 
echo "</pre>";
echo "total API movies";
echo $totalApiMovies; 
echo "</pre>";



