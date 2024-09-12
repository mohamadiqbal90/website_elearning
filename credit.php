<?php
session_start();
include 'config.php'; // Include your database connection file
// Check if the user is logged in, otherwise redirect to login page
if (!isset($_SESSION['student_id'])) {
    header("Location: login.php");
    exit();
}

// Retrieve user information from session
$name = $_SESSION['name'];
$email = $_SESSION['email'];
$class = $_SESSION['class'];
$role = $_SESSION['role'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credits</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="custom-cursor site-wide">
        <div class="pointer"></div>
    </div>
    <div class="header-nav-container">
        <header>
            <h1><a href="index.php"><img src="./image/text-header.png"></a></h1>
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
        <section class="credits">
            <h2>Credits</h2>
            <ul>
                <li><strong>Manajer Proyek:</strong> Moh Rakha Iqbal Bareno</li>
                <li><strong>Perancang UI:</strong> Muslik</li>
                <li><strong>Perancang UX:</strong> Hari Sutrisno</li>
                <li><strong>Front-End:</strong> M Burhanudin Asyari</li>
                <li><strong>Perancang Dokumen:</strong> M Ridho Sayiddhina</li>
            </ul>
        </section>
    </main>
    <footer>
        <p><a href="index.php">Beranda</a></p>
    </footer>
    <script src="js/customCursor.js"></script>
    <script src="js/sidebarToggle.js"></script>
    <script src="js/navAnimation.js"></script>
</body>
</html>
