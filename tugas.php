<?php
include 'config.php';

session_start();
$name = $_SESSION['name'] ?? '';
$email = $_SESSION['email'] ?? '';
$class = $_SESSION['class'] ?? '';
$role = $_SESSION['role'] ?? '';

if (!isset($_SESSION['student_id'])) {
    echo "Student ID is not set in the session.";
    exit();
}


// Fetch tasks from the correct table
$query = "SELECT task_id, title, description, due_date FROM task";
$stmt = $conn->prepare($query);

if (!$stmt) {
    echo "Error preparing the SQL query: " . $conn->error;
    exit();
}

$stmt->execute();
$result = $stmt->get_result();

$task = [];
while ($row = $result->fetch_assoc()) {
    $task[] = $row;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas</title>
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
        <section class="intro3" style="min-height:500px">
            <h3>Tugas</h3>
            <div class="tugas-container">
                <aside class="sidebar">
                    <h2>Tugas</h2>
                    <ul>
                        <?php foreach ($task as $task): ?>
                            <li>
                                <button class="task-button" data-task-id="<?php echo htmlspecialchars($task['task_id']); ?>">
                                    <?php echo htmlspecialchars($task['title']); ?>
                                </button>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </aside>
                <section class="tugas-content">
                    <section id="task-content" class="tugas-content" style="position:relative;">
                        <!-- Content will be dynamically loaded here -->
                    </section>
                    <img src="./image/tugas-background.png" alt="Materi Background" class="content-image">
                </section>
            </div>
        </section>
    </main>
    <footer>
        <p><a>Design by Kelompok P-Balap</a></p>
    </footer>
    <script src="js/customCursor.js"></script>
    <script src="js/sidebarToggle.js"></script>
    <script src="js/navAnimation.js"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.task-button').forEach(button => {
            button.addEventListener('click', function() {
                const taskId = this.getAttribute('data-task-id');
                fetchTaskContent(taskId);
            });
        });
    });

    function fetchTaskContent(taskId) {
    fetch('fetch_task_content.php?task_id=' + encodeURIComponent(taskId))
        .then(response => response.json())
        .then(data => {
            const section = document.getElementById('task-content');
            section.innerHTML = `
                <h2>${data.title}</h2>
                <p>${data.description}</p>
                <p>Kerjakan Sampai: ${data.due_date}</p>
                <p><strong>ID Tugas:</strong> ${taskId}</p> <!-- Display Task ID -->
                <form id="submit-link-form" method="post" action="submit_link.php">
                    <input type="hidden" name="task_id" value="${taskId}">
                    <label for="link">Link:</label>
                    <input type="url" name="link" id="link" required><br><br>
                    <button type="submit">Submit Link</button>
                </form>
            `;
            
            // Attach event listener after the form is added
            const form = document.getElementById('submit-link-form');
            if (form) {
                form.addEventListener('submit', function(event) {
                    event.preventDefault(); // Prevent default form submission
                    
                    const formData = new FormData(form);
                    
                    fetch(form.action, {
                        method: 'POST',
                        body: formData
                    })
                    .then(response => response.text())
                    .then(result => {
                        console.log(result); // Log the result for debugging
                        if (result.includes('Invalid task ID or link')) {
                            alert('Invalid task ID or link');
                        } else {
                            window.location.reload(); // Reload to see updated content
                        }
                    });
                });
            }
        });
}

    </script>
</body>
</html>
