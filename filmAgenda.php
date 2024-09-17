<?php include('core/Header.php'); ?>

<h2 class="col-md-6 left-box">Draaiende films</h2>

<?php
$amount = $totalDbMovies;
?>

<?php for ($x = 0;$x <= $amount - 1;$x++): ?>
<div class="col-4 mb-3">
   <div class="card w-100">
      <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/e7c9a8f5-bd80-495a-8f21-d90909c57eb0/d97uzxj-18b79a09-44f0-4531-a322-4947358229ae.png">
      <div class="card-body">
         <h5 class="card-title"><?php echo $allMovies[$x + 1]["title"] ?></h5>
         <p class="card-text">&euro; <?php echo $allMovies[$x + 1]["rating"] ?></p>
         <a href="filmDetails.php?film=<?php echo $allMovies[$x + 1]["id"] ?>" class="ticket-bestelling-btn">Boeken</a>
      </div>
   </div>
</div>
<?php endfor; ?>  

</div>

<?php include('core/Footer.php'); ?>