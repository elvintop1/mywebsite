<?php
session_start();
// include("database.php");

// // Handle form submission
// if ($_SERVER["REQUEST_METHOD"] == "POST") {
//     $email = mysqli_real_escape_string($conn, $_POST['email']);
//     $password = $_POST['password'];

//     // Check if user exists
//     $sql = "SELECT * FROM users WHERE email='$email'";
//     $result = mysqli_query($conn, $sql);
//     $user = mysqli_fetch_assoc($result);

//     if ($user && password_verify($password, $user['password'])) {
//         // Set session variables
//         $_SESSION['user'] = $user['email'];
//         $_SESSION['name'] = $user['name'];

//         // Redirect to homepage
//         header("Location: index.php");
//         exit();
//     } else {
//         $error = "Invalid email or password.";
//     }
// }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/queries.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script defer src="script.js"></script>
    <title>Login - Mouse Store</title>
</head>
<body>
    <header class="header">
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

                <?php if(isset($_SESSION['user'])): ?>
                    <li><a href="logout.php">Logout</a></li>
                <?php else: ?>
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

    <div class="login-wrapper">
        <!-- Left Side: Login Form -->
        <div class="login-box">
            <h2>Login</h2>
            <form action="login.php" method="POST">
                <label for="username">Username</label>
                <input type="text" id="username" placeholder="Enter Email" required>

                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter Password" required>

                <div class="remember-me">
                    <input type="checkbox" id="remember">
                    <label for="remember">Remember me</label>
                </div>

                <button type="submit" class="btn">Login</button>
            </form>
        </div>

        <!-- Right Side: Image -->
        <div class="login-image"></div>
    </div>



    <footer class="footer">
        <div class="footer-container">
            <!-- Left Section: Company Info -->
            <div class="footer-left">
                <img src="images/logo.png" alt="Mouse Store Logo">
                <h3>MOUSE STORE</h3>
                <p>📍 123 Tech Street, Silicon Valley, CA</p>
                <p> <a href = "tel:0869262036">📞 +1 234 567 890</p>
                <p> <a href = "mailto:hao.doprogaming3479@hcmut.edu.vn"> 📧 support@mousestore.com</p>
            </div>

            <!-- Middle Section: Quick Links -->
            <div class="footer-middle">
                <h3>About Store</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">Return Policy</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>

            <!-- Right Section: Social Media -->
            <div class="footer-right">
                <h3>Follow Us</h3>
                <div class="footer-social">
                    <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                    <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                    <a href="#"><ion-icon name="logo-youtube"></ion-icon></a>
                    <a href="#"><ion-icon name="logo-linkedin"></ion-icon></a>
                    <a href="#"><ion-icon name="logo-tiktok"></ion-icon></a>
                </div>
            </div>
        </div>

        <!-- Bottom Footer -->
        <div class="footer-bottom">
            &copy; <?php echo date("Y"); ?> Mouse Store. All rights reserved | Visitors: 5,884,553
        </div>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>

<?php
// mysqli_close($conn);
?>
