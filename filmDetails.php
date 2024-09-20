<?php include('core/Header.php');
$currentDisplayingMovie = $_GET['movie'];

if (!array_key_exists($currentDisplayingMovie, $allMovies)) {
    return;
}
?>


<head>
    <link rel="stylesheet" href="/assets/css/filmDetailStyle.css">
</head>

<body>
    <div class="film-title">
        <H1><?php echo $allMovies[$currentDisplayingMovie]["title"] ?></H1>
    </div>

    <div class="flex-container">
        <div>
            <div class="banner">
                <img src="<?php echo $allMovies[$currentDisplayingMovie]["banner_path"] ?>">
                <!-- <h6 class="card-title"><?php echo $allMovies[$currentDisplayingMovie]["title"] ?></h6> -->
            </div>
        </div>
        <div class="right-box">
            <div class="card-body">
                <p class="card-text">Rating <?php echo $allMovies[$currentDisplayingMovie]["rating"] ?></p>
                <p class="card-text">Tijd <?php echo $allMovies[$currentDisplayingMovie]["duration"] ?></p>
                <!-- <p class="card-text">Release datum <?php echo $allMovies[$currentDisplayingMovie]["release_date"] ?></p> -->
                <p class="card-text">leeftijdsbeperking <?php echo $allMovies[$currentDisplayingMovie]["age_restriction"] ?></p>
    

                <br>
                <div class="contactform">
                    <!-- <?php if (isset($_POST['add'])) {
                        echo "<p style='color: green'>UW FORMULIER IS VERSTUURD!</p>";
                    } ?> -->
                    <form action="bestelPagina.php">
                        <label for="vnaam">Naam</label>
                        <input type="text" id="vnaam" name="vnaam" placeholder="Uw voornaam.." required>

                        <label for="email">E-mail</label>
                        <input type="email" id="email" name="email" placeholder="Uw e-mail.." required>
                        <br>
                        <input type="submit" class="ticket-btn" value="Bestel tickets" name="add">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

<?php include('core/Footer.php'); ?>