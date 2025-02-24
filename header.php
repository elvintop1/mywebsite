<header class="header">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/responsive.css">
    <a href="index.php"><img src="images/logo.png" class="logo" alt="Mouse Store"></a>
    <nav class="header-nav">
        <ul class="header-nav-list">
            <li><a href="index.php">Home</a></li>
            <!-- Product Dropdown -->
            <div class="dropdown">
                <li><a href="products.php">Products &#9660;</a></li>
                <div class="dropdown-content">
                    <a href="products.php?category=gaming">Gaming Mice</a>
                    <a href="products.php?category=office">Office Mice</a>
                    <a href="products.php?category=coding">Coding Mice</a>
                </div>
            </div>

            <li><a href="cart.php">Cart (<?php echo isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0; ?>)</a></li>
            <li><a href="contact.php">Contact</a></li>

            <?php if (isset($_SESSION['user'])): ?>
                <!-- Show only when user is logged in -->
                <li><a href="profile.php"><?php echo $_SESSION['user']; ?></a></li>
                <li><a href="logout.php">Logout</a></li>
            <?php else: ?>
                <!-- Show only when user is not logged in -->
                <li><a href="login.php">Login</a></li>
                <li><a href="register.php" class="header-nav-link call-to-action">Sign up</a></li>
            <?php endif; ?>
        </ul>
    </nav>

    <button class="mobile-btn">
        <ion-icon class="mobile-icon" name="menu"></ion-icon>
        <ion-icon class="mobile-icon" name="close"></ion-icon>
    </button>
</header>
