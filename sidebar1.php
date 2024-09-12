<?php
// Ensure user data is available
if (!isset($name) || !isset($email) || !isset($class)) {
    $name = $email = $class = $role ='';
}
?>

<div id="sidebar1" class="sidebar1">
    <p>Nama: <?php echo htmlspecialchars($name); ?></p>
    <p>Kelas: <?php echo htmlspecialchars($class); ?></p>
    <p>Peran: <?php echo htmlspecialchars($role); ?></p>
    <!-- Logout Button -->
    <div class="logout-button">
        <a href="logout.php">Logout</a>
    </div>
</div>



<div id="sidebarToggle" class="sidebar-toggle">
    <p>Nama: <?php echo htmlspecialchars($name); ?></p>
</div>