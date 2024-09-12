<?php
include 'config.php';
session_start();

$subject = $_GET['subject'];
$bab = $_GET['bab'];

// Determine the correct table based on the user's class
$class = $_SESSION['class'] ?? '';
$table_name = '';

if ($class == 10) {
    $table_name = 'materials';
} elseif ($class == 11) {
    $table_name = 'materials1';
} elseif ($class == 12) {
    $table_name = 'materials2';
}

$query = "SELECT content, video_path FROM $table_name WHERE subject = ? AND bab = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, 'ss', $subject, $bab);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

$row = mysqli_fetch_assoc($result);

echo json_encode([
    'content' => $row['content'],
    'video_path' => $row['video_path']
]);
?>
