<?php include('core/Header.php'); ?>

<h2 class="col-md-6 left-box">Draaiende films</h2>

<?php
$amount = 10;
?>

<?php for ($x = 0;$x <= $amount - 1;$x++): ?>
<div class="col-4 mb-3">
   <div class="card w-25">
      <img src="<?php echo $allMovies[$x + 1]["banner_path"] ?>" width="158", height="250">
      <div class="card-body">
         <h6 class="card-title"><?php echo $allMovies[$x + 1]["title"] ?></h6>
         <p class="card-text">Rating <?php echo $allMovies[$x + 1]["rating"] ?></p>
         <p class="card-text"><?php echo $allMovies[$x + 1]["duration"] ?></p>
         <a href="filmDetails.php?film=<?php echo $allMovies[$x + 1]["id"] ?>" class="col-md-6 left-box">Details</a>
      </div>
   </div>
</div>
<?php endfor;?>  

</div>

<?php include('core/Footer.php');?>