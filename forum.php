<?php
include 'config.php';

session_start();
if (!isset($_SESSION['student_id'])) {
    header("Location: login.php");
    exit();
}
$name = $_SESSION['name'];
$email = $_SESSION['email'];
$class = $_SESSION['class'];
$role = $_SESSION['role'];
// Fetch all posts
$query = "SELECT * FROM forum_posts ORDER BY created_at DESC";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum</title>
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
    <?php include 'sidebar1.php'; ?>
    <main>
        <section class="intro4">
            <h3>Forum</h3>
            <section class="forum-section">
                <div class="forum-container">
                    <?php while($post = $result->fetch_assoc()): ?>
                        <div class="post">
                            <div class="post-content">
                                <h2><a href="javascript:void(0);" onclick="viewPost(<?php echo $post['post_id']; ?>)"><?php echo htmlspecialchars($post['title']); ?></a></h2>
                                <p><?php echo htmlspecialchars($post['content']); ?></p>
                                <div class="post-meta">
                                    <span>Posted by <?php echo htmlspecialchars($post['created_by']); ?></span>
                                    <span><?php echo htmlspecialchars($post['created_at']); ?></span>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
                <aside class="forum-sidebar">
                    <div class="create-post">
                        <h2>Buat Post</h2>
                        <form action="create_post.php" method="POST">
                            <input type="text" name="title" placeholder="Judul Post" required>
                            <textarea name="content" placeholder="Tulis Disini...." required></textarea>
                            <button type="submit">Post</button>
                            <img src="./image/forum-background.png"class="content-image3">
                        </form>
                    </div>
                </aside>
            </section>
            <section id="post-view" style="display:none;">
                <!-- Dynamic Post View -->
            </section>
    </main>
    <footer>
        <p><a>Design by Kelompok P-Balap</a></p>
    </footer>
    <script src="js/customCursor.js"></script> 
    <script src="js/sidebarToggle.js"></script>
    <script src="js/navAnimation.js"></script>
    <script>
    function viewPost(postId) {
        fetch('view_post.php?post_id=' + postId)
            .then(response => response.text())
            .then(html => {
                document.querySelector('.forum-container').style.display = 'none';
                document.querySelector('.create-post').style.display = 'none'; // Hide the "Buat Post" section
                document.getElementById('post-view').innerHTML = html;
                document.getElementById('post-view').style.display = 'block';
            });
    }

    </script>
</body>
</html>
