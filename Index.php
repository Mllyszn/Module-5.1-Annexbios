<?php include('core/Header.php'); ?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>

    <!-- favicon -->
    <link rel="icon" href="<?= BASEURL ?>assets/icons/favicon.ico">
    <!-- header CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/header.css">
    <!-- main CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/indexStyle.css">
    <!-- footer CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/footer.css">
    <!-- bootstrap link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container movie-details">
        <div class="inleiding">
            <h3>Welkom bij Annexbios Woerden</h3>
            <p>
                Annexbios Woerden is gevestigd in het Defensie-Eiland in Woerden en heeft 14 moderne zalen met
                2.988 comfortabele zitplaatsen. Het filmaanbod is heel breed en ons personeel staat altijd klaar om je
                te helpen bij het uitkiezen van de geschikte film voor jouw filmuitje.
                <br>
                <br>
                De bioscoop is met de fiets of het openbaar vervoer goed bereikbaar.
                Betaald parkeren kan in de buurt van de bioscoop en de bussen stoppen op loopafstand van de bioscoop.
            </p>
            <div class="inleiding-btn">
                <a href="filmAgenda.php" class="bekijk-films-btn">BEKIJK DRAAIENDE FILMS
                    <img src="/assets/icons/arrow-right-short.svg" alt="My Happy SVG" />
                </a>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-6 info-center">
                <div class="bios-fotos">
                    <img src="/assets/img/bios_adres.png" class="adres-img" alt="adres-maps">
                    <img src="/assets/img/046_2160.jpg" class="theater-img" alt="theater">
                    <div class="info-text">
                        <H3>Adres:</H3>
                        <H5>Wilheminaweg 63</H5>
                        <br>
                        <H3>Telefoonnummer:</H3>
                        <H5>020-12345678</H5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 left-box">
            <H2>Film Agenda</H2>
            <a href="bestelPagina.php" class="ticket-bestelling-btn">Bestel Tickets</a>
        </div>
        <div class="F-display">
            <?php include('core/films_display.php'); ?>
        </div>
    </div>
</body>

<?php include('core/Footer.php'); ?>