<?php
session_start();
include("database.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/theme.css">
    <title>Register - MousePro Store</title>
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
        <!-- Left Side: Register Form -->
        <div class="login-box">
            <h2>Sign Up</h2>
            <form action="register.php" method="POST">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" placeholder="Enter Full Name" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>

                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Re-enter Password" required>

                <div class="remember-me">
                    <input type="checkbox" id="agree" required>
                    <label for="agree">I agree to the Terms & Conditions</label>
                </div>

                <button type="submit" class="btn">Create Account</button>
            </form>

            <p>Already have an account? <a href="login.php">Login</a></p>
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
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = mysqli_real_escape_string($conn, $_POST["fullname"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $confirm_password = mysqli_real_escape_string($conn, $_POST["confirm-password"]);

    if ($password !== $confirm_password) {
        echo "<script>alert('Passwords do not match. Please try again.');</script>";
    } else {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        $sql = "INSERT INTO users (fullname, email, password) VALUES ('$fullname', '$email', '$hashed_password')";

        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Registration successful! Please log in.'); window.location='login.php';</script>";
        } else {
            echo "<script>alert('Error: Unable to register.');</script>";
        }
    }
}

mysqli_close($conn);
?>
