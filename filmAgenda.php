<?php include('core/Header.php'); ?>

<div class="row">
    <div class="col-12">
        <h2 class="text-center">Films <?php echo $totalMovies ?></h2>
    </div>

<?php
$amount = $totalMovies;
?>

<?php for ($x = 0;$x <= $amount - 1;$x++): ?>
<div class="col-4 mb-3">
   <div class="card w-100">
      <img src="#">
      <div class="card-body">
         <h5 class="card-title"><?php echo $allMovies[$x + 1]["naam"] ?></h5>
         <p class="card-text">&euro; <?php echo $allMovies[$x + 1]["leeftijdslimiet"] ?></p>
         <a href="filmDetails.php?film=<?php echo $allMovies[$x + 1]["id"] ?>" class="btn btn-primary">Boeken</a>
      </div>
   </div>
</div>
<?php endfor; ?>  

</div>

<?php include('core/Footer.php'); ?>