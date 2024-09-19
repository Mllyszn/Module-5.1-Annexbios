<head>
   <link rel="stylesheet" href="/assets/css/agendaStyle.css">
</head>

<?php
$amount = $totalDbMovies;
?>

<?php for ($x = 0; $x <= $amount - 1; $x++): ?>

   <div class="films">
      <a class="details-btn" href="filmDetails.php?movie=<?php echo $allMovies[$x + 1]["id"] ?>">
         <div class="col-4 mb-3 movie-display">
            <div class="card banner">
               <img src="<?php echo $allMovies[$x + 1]["banner_path"] ?>" width="158" , height="250">
               <div class="card-body">
                  <h6 class="card-title"><?php echo $allMovies[$x + 1]["title"] ?></h6>
                  <p class="card-text">Rating <?php echo $allMovies[$x + 1]["rating"] ?></p>
                  <!-- <p class="card-text"><?php echo $allMovies[$x + 1]["duration"] ?></p> -->
               </div>
            </div>
         </div>
      </a>
   </div>
<?php endfor; ?>

</div>