<?php
// Start the session
session_start();

// Include the config file
include 'config.php';

if (!isset($_SESSION['student_id'])) {
    header("Location: login.php");
    exit();
}

// Retrieve user details from session
$name = $_SESSION['name'] ?? '';
$email = $_SESSION['email'] ?? '';
$class = $_SESSION['class'] ?? '';
$role = $_SESSION['role'] ?? '';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pengumuman - Website E-Learning P-Balap</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="custom-cursor site-wide">
        <div class="pointer"></div>
    </div>
    <div class="header-nav-container">
        <header>
            <h1><a href="index.php"><img src="./image/text-header.png" alt="Header Image"></a></h1>
        </header>
        <nav>
            <ul>
                <li><a href="profil.php" id="nav-item-1"><img src="./image/profil-anda.png"class="nav-img"></a></li>
                <li><a href="materi.php" id="nav-item-2"><img src="./image/materi-pelajaran.png"class="nav-img"></a></li>
                <li><a href="tugas.php" id="nav-item-3"><img src="./image/tugas.png"class="nav-img"></a></li>
                <li><a href="pengumuman.php" id="nav-item-4"><img src="./image/pengumuman.png"class="nav-img"></a></li>
                <li><a href="forum.php" id="nav-item-5"><img src="./image/forum.png"class="nav-img"></a></li>
                <li><a href="credit.php" id="nav-item-6"><img src="./image/credit.png"class="nav-img"></a></li>
            </ul>
        </nav>
    </div>
    
    <?php include 'sidebar1.php'; ?>
    
    <main>
        <section class="intro4">
            <h3>Pengumuman</h3>
            <p><b>Berita Tentang ini bla bla bla<br><br></b>
            bla bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bl
            ala bla bla bla bla bla bla blala bla bla bla bla bla bla blala bla bla bla bla bla bla bla
            <img src="./image/pengumuman-background.png"class="content-image2"></p><br>
            <p><b>Berita Tentang itu bla bla bla<br><br></b>
                bla bla bla bla bla bla bla bla
                <img src="./image/pengumuman-background.png"class="content-image2"></p><br>
            <p><b>Berita Tentang apalah bla bla bla<br><br></b>
                bla bla bla bla bla bla bla bla
                <img src="./image/pengumuman-background.png"class="content-image2"></p><br>
        </section>
    </main>
    
    <footer>
        <p><a>Design by Kelompok P-Balap</a></p>
    </footer>
    
    <script src="js/customCursor.js"></script>
    <script src="js/sidebarToggle.js"></script>
    <script src="js/navAnimation.js"></script>
</body>
</html>
