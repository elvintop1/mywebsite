<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/theme.css">
    <script defer src="js/script.js"></script>
    <title>Mouse Store - Buy the Best Computer Mice</title>
</head>
<body>

    <?php include("header.php"); ?>

    <main>
        <!-- HERO SECTION -->
        <section class="hero-section">
            <div class="container">
                <h1>Find the Best Gear for Your Needs</h1>
                <p class="hero-description">Browse our collection of high-quality gaming and office gear.</p>
                <a href="products.php" class="btn btn-full">Shop Now</a>
                <a href="#how" class="btn btn-outline">Learn more →</a>
            </div>
        </section>

        <!-- FEATURED BRANDS -->
        <section class="featured-in reveal">
            <div class="container">
                <h2>As featured in</h2>
                <div class="logos">
                    <img class="lazy-load" data-src="images/techradar.png" alt="TechRadar">
                    <img class="lazy-load" data-src="images/pcgamers.png" alt="PC Gamer">
                    <img class="lazy-load" data-src="images/wired.png" alt="Wired">
                    <img class="lazy-load" data-src="images/toms.png" alt="Tom's Hardware">
                </div>
            </div>
        </section>

        <!-- HOW IT WORKS -->
        <section class="how-to" id="how">
            <div class="container">
                <h2>Find Your Perfect Mouse in 3 Simple Steps</h2>
            </div>

            <div class="container grid-container">
                <div class="step-text-box">
                    <p class="step-number">01</p>
                    <h3>Choose Your Mouse</h3>
                    <p>Browse our wide range of gaming and office mice. Select the one that best suits your needs.</p>
                </div>
                <div class="step-img-box">
                    <img src="images/step1.png" alt="Choose a Mouse">
                </div>

                <div class="step-img-box">
                    <img src="images/step2.png" alt="Add to Cart">
                </div>
                <div class="step-text-box">
                    <p class="step-number">02</p>
                    <h3>Add to Cart</h3>
                    <p>Easily add your selected mouse to the cart and proceed to checkout.</p>
                </div>

                <div class="step-text-box">
                    <p class="step-number">03</p>
                    <h3>Fast Delivery</h3>
                    <p>We ensure quick delivery to your doorstep so you can start using your new mouse as soon as possible.</p>
                </div>
                <div class="step-img-box">
                    <img src="images/step3.png" alt="Fast Delivery">
                </div>
            </div>
        </section>

    </main>

    <?php include("footer.php"); ?>

</body>
</html>
