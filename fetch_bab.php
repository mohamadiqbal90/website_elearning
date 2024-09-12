<?php
include 'config.php';
session_start();

$subject = $_GET['subject'];

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

$query = "SELECT DISTINCT bab FROM $table_name WHERE subject = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, 's', $subject);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

$babs = [];
while ($row = mysqli_fetch_assoc($result)) {
    $babs[] = $row['bab'];
}

echo json_encode(['babs' => $babs]);
?>
