<?php include('core/Header.php'); ?>

<head>
    <link rel="stylesheet" href="assets/css/contactStyle.css">
</head>

<body>
    <div class="contact">
        <H1>Contact</H1>
    </div>
    <div class="Qform">
        <form action="/index.php">
            <textarea name="vraag" id="Q" rows="3" cols="75"
             placeholder="Schrijf hier je vraag"></textarea>
            <br>
            <input class="submit-btn" type="submit" value="Stuur door">
            </form>
    </div>
</body>

<?php include('core/Footer.php'); ?>