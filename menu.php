<?php
$config = include 'assets/config.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch menu items with categories
$sql = "SELECT 
            p.product_id, 
            p.product_name, 
            p.price, 
            p.special_instructions, 
            p.product_image, 
            p.quantity, 
            c.category_name 
        FROM 
            product_items p 
        JOIN 
            product_categories c 
        ON 
            p.category_id = c.category_id 
        ORDER BY 
            c.category_name, p.product_name";

$result = $conn->query($sql);

if (!$result) {
    die("Query Error: " . $conn->error);
}

// Organize items by category
$menu = [];
while ($row = $result->fetch_assoc()) {
    $menu[$row['category_name']][] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Menu - Dine&Watch</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/menu.css">
</head>

<body>
    <header class="custom-header">
        <div class="logo">
            <img src="Images/dinewatchlogo.png" alt="Dine & Watch Logo" class="logo-img">
        </div>
        <nav class="nav-menu">
            <a href="landing_page.php">HOME</a>
            <a href="#" class="active">MENU</a>
            <a href="landing_page.php#premium-pizza-section">PREMIUMS</a>
            <a href="landing_page.php#contact-section">CONTACT US</a>
        </nav>
    </header>

    <!-- Menu Section -->
    <section class="menu-section py-5">
        <div class="container">
            <h1 class="text-center mb-5 fw-bold">Our Menu</h1>

            <!-- Display Categories -->
            <?php foreach ($menu as $category => $items): ?>
                <h2 class="fw-bold text-center mb-4"><?php echo htmlspecialchars($category); ?></h2>
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                    <?php foreach ($items as $item): ?>
                        <div class="col">
                            <div class="card shadow-sm h-100 custom-card">
                                <div class="row g-0">
                                    <div class="col-4">
                                        <img src="Images/<?php echo htmlspecialchars($item['product_image']); ?>" 
                                            class="img-fluid rounded-start"
                                            alt="<?php echo htmlspecialchars($item['product_name']); ?>">
                                    </div>
                                    <div class="col-8">
                                        <div class="card-body">
                                            <h5 class="card-title fw-bold"><?php echo htmlspecialchars($item['product_name']); ?></h5>
                                            <p class="card-text text-danger fw-bold">₱<?php echo number_format($item['price'], 2); ?></p>
                                            <p class="card-text"><?php echo htmlspecialchars($item['special_instructions']); ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endforeach; ?>
        </div>
    </section>

    <footer class="footer py-3">
        <div class="container">
            <p class="mb-0">2024 - Made by Sound System Group - BSU - TNEU - Lipa Campus</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>