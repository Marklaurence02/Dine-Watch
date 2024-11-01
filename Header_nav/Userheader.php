<?php
// Start the session if it hasn't been started yet
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include 'assets/config.php';
?>

<header class="custom-header d-flex justify-content-between align-items-center p-3">
    <!-- Logo linking to the landing page -->
    <a href="landing_page.php">
        <img src="Images/logo.png" alt="Go back" class="img-fluid" style="width: 100px;">
    </a>
    
    <!-- Menu icon to open the sidebar -->
    <button class="openbtn" onclick="toggleSidebar()"><i class="fa fa-bars"></i></button>
</header>

<!-- Sidebar structure -->
<div id="mySidebar" class="sidebar">
    <div class="side-header text-center">
        <img src="Images/user.png" width="100" height="100" alt="User" class="rounded-circle">
        <h5 class="mt-3">
            <?php
                if (isset($_SESSION['user_id'])) {
                    $user_id = $_SESSION['user_id'];
                    $sql = "SELECT first_name FROM users WHERE user_id = ?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param('i', $user_id);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    $user = $result->fetch_assoc();

                    if ($user) {
                        echo '<div class="welc">Welcome, ' . htmlspecialchars($user['first_name']) . ' (' . htmlspecialchars($_SESSION['role']) . ')</div>';
                    } else {
                        echo "Hello, User";
                    }
                } else {
                    echo "Hello, Guest";
                }
            ?>
        </h5>
    </div>
    <hr style="border:1px solid; background-color:#8a7b6d; border-color:#3B3131;">
    <a href="javascript:void(0)" class="closebtn" onclick="toggleSidebar()">&times;</a>
    <a href="User-Panel.php"><i class="fa fa-home"></i> Home</a>
    <a href="#orders" onclick="order_list()"><i class="fa fa-cart-arrow-down"></i> Orders</a>
    <a href="#reservation" onclick="savedreservation()"><i class="fa fa-calendar-check-o"></i> Reservations</a>
    <a href="User-settings.php"><i class="fa fa-cog"></i> Settings</a>
    <a href="assets/log-out.php"><i class="fa fa-sign-out"></i> Log-out</a>
</div>

<script>
function toggleSidebar() {
    const sidebar = document.getElementById("mySidebar");
    sidebar.style.width = sidebar.style.width === "250px" ? "0" : "250px";
    document.getElementById("mainContent").style.marginRight = sidebar.style.width === "250px" ? "250px" : "0";
}
</script>
<style>
    /* Sidebar styling */
.sidebar {
    height: 100%;
    width: 0;
    position: fixed;
    top: 0;
    right: 0;
    background-color: #333;
    overflow-x: hidden;
    transition: 0.3s;
    z-index: 1000;
    padding-top: 60px;
}

/* Sidebar links */
.sidebar a {
    padding: 10px 20px;
    text-decoration: none;
    font-size: 1.2rem;
    color: #fff;
    display: block;
    transition: 0.3s;
}

.sidebar a:hover {
    background-color: #575757;
}

/* Sidebar header styling */
.side-header {
    padding: 10px;
    color: #fff;
}

.welc {
    font-size: 1rem;
    color: #ccc;
}

/* Close button */
.closebtn {
    position: absolute;
    top: 10px;
    right: 25px;
    font-size: 2rem;
    color: #fff;
    background: none;
    border: none;
    cursor: pointer;
}

/* Open button styling */
.openbtn {
    font-size: 1.5rem;
    color: #333;
    background: none;
    border: none;
    cursor: pointer;
}

#main .openbtn {
    position: fixed;
    top: 10px;
    right: 10px;
}

</style>
