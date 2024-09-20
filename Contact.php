<?php include('core/Header.php'); ?>

<head>
    <title>Contact</title>
    <link rel="stylesheet" href="assets/css/contactStyle.css">
</head>

<body>
    <div class="contact">
        <H1>Contact</H1>
    </div>

    <div class="Qform">
        <div class="contactform">
            <form method="post">

                <textarea name="vraag" id="Q" rows="3" cols="75" placeholder="Schrijf hier je vraag"></textarea>
                <br>
                <input class="submit-btn" type="submit" value="Stuur door" name="add">
            </form>
            <?php if (isset($_POST['add'])) {
                echo "<p style='color: green' class='vali'>Uw vraag is doorgestuurd! Dank u wel voor uw samenwerking</p>";
            } ?>
        </div>

    </div>
</body>

<?php include('core/Footer.php'); ?>