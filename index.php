<?php
// Start the session to manage user authentication
session_start();

// Get the requested page, default to 'home'
$page = isset($_GET['page']) ? $_GET['page'] : 'home';

// Allowed pages to prevent direct script access vulnerabilities
$allowed_pages = ['home', 'products', 'contacts', 'user', 'login', 'register'];

// If the requested page is not in the allowed list, load 404 page
if (!in_array($page, $allowed_pages)) {
    $page = '404';
}

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
    <script defer src="js/script.js"></script>
    <title>Mouse Store - <?php echo ucfirst($page); ?></title>
</head>
<body>


    

    <main>
        <?php include "./$page.php"; ?>
    </main>

    <!-- Include the shared footer -->

</body>
</html>
