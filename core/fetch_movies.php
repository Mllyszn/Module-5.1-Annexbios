<?php
while ($filmRow < $totalApiMovies) {
    if ($obj[$filmRow]['id'] > $totalApiMovies)
        break;

    if ($filmRow + 1 == $obj[$filmRow]['id']) //if current fetching movie is equal to the movie in API
        if ($obj[$filmRow] == true) {
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
            if ($insertqry === false) {
                echo mysqli_error($con);
            } else {
                if ($insertqry->execute()) {
                    echo "OK, opdracht uitgevoerd";
                }
                $insertqry->close();
            }

            $filmRow++;
        }
}