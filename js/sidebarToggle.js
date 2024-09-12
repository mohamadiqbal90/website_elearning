document.getElementById('sidebarToggle').addEventListener('click', function() {
    var sidebar = document.getElementById('sidebar1');
    var toggleButton = document.getElementById('sidebarToggle');

    sidebar.classList.toggle('open');
    toggleButton.classList.toggle('open');
});
