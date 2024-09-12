<?php
session_start();
include 'config.php';

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
    <title>Tugas UI/UX Website E-Learning SMA</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="custom-cursor site-wide">
        <div class="pointer"></div>
    </div>
    
    <div class="header-nav-container">
        <header>
            <h1><a href="index.php"><img src="./image/text-header.png" alt="Website Logo" style="cursor:none;"></a></h1>
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

    <!-- Sidebar is included here -->
    <?php include 'sidebar1.php'; ?>

    <main>
        <section class="intro1">
            <h3>Selamat Datang</h3>
            <p style="min-height:850px"><b>Selamat Datang di Website E-learning P-Balap</b><br><br>
                Di era digital ini, belajar tidak lagi terbatas pada ruang kelas tradisional. Website E-Learning P-Balap hadir untuk mendukung perjalanan pendidikan Anda dengan cara yang inovatif dan menyenangkan.<br><br>
                Kami memahami tantangan dan kebutuhan siswa SMA, dan kami berkomitmen untuk menyediakan sumber daya belajar yang berkualitas tinggi dan mudah diakses. Dengan materi pelajaran yang terstruktur, latihan soal, video tutorial, dan forum diskusi, kami bertujuan untuk membuat pengalaman belajar Anda lebih efektif dan menyenangkan.<br><br>
                <b>Fitur Utama:</b><br><br>
                <b>Materi Pelajaran Lengkap:</b> Akses berbagai materi pelajaran dari semua mata pelajaran yang relevan dengan kurikulum SMA.<br><br>
                <b>Latihan Soal Interaktif:</b> Uji pemahaman Anda dengan latihan soal yang dirancang untuk membantu Anda mempersiapkan ujian dengan lebih baik.<br><br>
                <b>Video Tutorial:</b> Tonton video pembelajaran yang mudah dipahami dan mendalam untuk membantu Anda menguasai konsep-konsep penting.<br><br>
                <b>Forum Diskusi:</b> Bergabung dengan komunitas belajar kami untuk berdiskusi, bertanya, dan berbagi pengetahuan dengan teman sekelas dan pengajar.<br><br>
                Kami percaya bahwa setiap siswa memiliki potensi luar biasa, dan dengan alat yang tepat, mereka dapat mencapai hasil terbaik. Mari mulai perjalanan belajar Anda bersama kami dan wujudkan cita-cita Anda!<br><br>
                Terima Kasih sudah mengunjungi website kami
            </p>

        </section>
    </main>

    <footer>
        <p><a>Design by Kelompok P-Balap</a></p>
    </footer>

    <script src="js/navAnimation.js"></script>
    <script src="js/customCursor.js"></script> 
    <script src="js/sidebarToggle.js"></script>
</body>
</html>
