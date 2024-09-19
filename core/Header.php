<?php
include('core/db_connect.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- favicon -->
    <link rel="icon" href="<?= BASEURL ?>../assets/icons/favicon.ico">
    <!-- header CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/header.css">
    <!-- main CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/indexStyle.css">
    <!-- footer CSS -->
    <link rel="stylesheet" href="<?= BASEURL ?>assets/css/footer.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>

<header>
    <div class="container">
        <a href="../Index.php"><img src="<?= BASEURL ?>/assets/img/AnnexBios_Woerden_logo.png" alt="logo"></a>
        <a href="../contact.php" class="header-btn"><i class="fa-solid fa-user"></i>Contact</a>
        <a href="../Vestegingen.php" class="header-btn"><i class="fa-solid fa-user"></i>Vestegingen</a>
        <a href="../filmAgenda.php" class="header-btn"><i class="fa-solid fa-user"></i>Film agenda</a>
    </div>
</header>