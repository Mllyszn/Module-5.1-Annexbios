<?php

$i = 1;
while($i < $totalApiMovies){
if(!array_key_exists($i, $allMovies)){
    if($obj[$filmRow]['id'] == $totalApiMovies){
            $id = $obj[$i]['id'];
            $title = $obj[$i]['title'];
            $description = $obj[$i]['description'];
            $rating = $obj[$i]['rating'];
            $duration = $obj[$i]['duration'];
            $release_date = $obj[$i]['release_date'];
            $age_restriction = $obj[$i]['age_restriction'];
            $banner_path = $obj[$i]['banner_path'];
            $price = $obj[$i]['price'];
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
        }
        $i++;
    }
}