<?php include('core/Header.php');
$currentDisplayingMovie = $_GET['movie'];
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
                <h6 class="card-title"><?php echo $allMovies[$currentDisplayingMovie]["title"] ?></h6>
            </div>
        </div>
        <div class="right-box">
            <H5>Details</h5>
            <div class="card-body">
                <h6 class="card-title"><?php echo $allMovies[$currentDisplayingMovie]["title"] ?></h6>
                <p class="card-text">Rating <?php echo $allMovies[$currentDisplayingMovie]["rating"] ?></p>
                <p class="card-text"><?php echo $allMovies[$currentDisplayingMovie]["duration"] ?></p>
            </div>
        </div>
    </div>

    <!-- pre -->
    <!-- <div class="col-4 mb-3 movie-display">
        <div class="banner">
            <img src="<?php echo $allMovies[$id + 1]["banner_path"] ?>">
            <h6 class="card-title"><?php echo $allMovies[$x + 1]["title"] ?></h6>
            <div class="right-box">
                <H5>heloo</h5>
            </div>
            <div class="card-body">
                <h6 class="card-title"><?php echo $allMovies[$x + 1]["title"] ?></h6>
                <p class="card-text">Rating <?php echo $allMovies[$x + 1]["rating"] ?></p>
                <p class="card-text"><?php echo $allMovies[$x + 1]["duration"] ?></p>
            </div>
        </div>
    </div> -->
</body>

<?php include('core/Footer.php'); ?>