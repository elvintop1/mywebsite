<?php
include("database.php");

$limit = 20; // Max products per page
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;
$category = isset($_GET['category']) ? $_GET['category'] : 'all';

// Count total products
$sql_count = "SELECT COUNT(*) AS total FROM products";
if ($category !== 'all') {
    $sql_count .= " WHERE category = ?";
}

$stmt_count = $conn->prepare($sql_count);
if ($category !== 'all') {
    $stmt_count->bind_param("s", $category);
}
$stmt_count->execute();
$result_count = $stmt_count->get_result();
$total_products = $result_count->fetch_assoc()['total'];
$stmt_count->close();

$total_pages = ceil($total_products / $limit); 
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Products - Mouse Store</title>
</head>
<script>
let offset = 0;
const limit = 10;
const maxProductsPerPage = 20; // Max products before pagination
let currentPage = 1;
const category = new URLSearchParams(window.location.search).get('category') || 'all';

document.addEventListener("DOMContentLoaded", function () {
    loadProducts();
    window.addEventListener("scroll", handleScroll);
    document.getElementById("load-more").addEventListener("click", loadProducts);
});

function loadProducts() {
    if (offset >= maxProductsPerPage) return; // Stop loading after 50 products

    document.getElementById("load-more").innerText = "Loading...";
    document.getElementById("load-more").disabled = true;

    setTimeout(() => { // Add 2-second delay
        fetch(`load_products.php?offset=${offset}&category=${category}&page=${currentPage}`)
            .then(response => response.json())
            .then(data => {
                if (!data || !data.products) return;

                totalProducts = data.total_products;
                totalPages = data.total_pages;
                currentPage = data.current_page;

                if (data.products.length === 0 || offset >= maxProductsPerPage) {
                    document.getElementById("load-more").style.display = "none";
                    return;
                }

                const container = document.getElementById("product-container");
                data.products.forEach(product => {
                    const productCard = `
                        <div class="col">
                            <div class="product-card card shadow-sm text-center">
                                <img src="images/products/${product.image}" class="card-img-top p-3" style="height: 150px; object-fit: contain;" alt="${product.name}">
                                <div class="card-body d-flex flex-column">
                                    <h6 class="card-title fw-bold">${product.name}</h6>
                                    <p class="text-primary fw-bold">$${parseFloat(product.price).toFixed(2)}</p>
                                    <a href="product.php?id=${product.id}" class="btn btn-sm btn-primary mt-auto">View Details</a>
                                </div>
                            </div>
                        </div>
                    `;
                    container.insertAdjacentHTML("beforeend", productCard);
                });

                offset += limit;

                document.getElementById("load-more").innerText = "Load More";
                document.getElementById("load-more").disabled = false;

                if (offset >= maxProductsPerPage) {
                    document.getElementById("pagination").style.display = "block";
                }
            })
            .catch(error => console.error("Error loading products:", error));
    }, 2000); // 2-second delay
}

// Auto-load when scrolling near bottom
function handleScroll() {
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 200) {
        loadProducts();
    }
}

// Handle Next & Previous Page
document.getElementById("prev-page").addEventListener("click", function (e) {
    e.preventDefault();
    if (currentPage > 1) {
        currentPage--;
        offset = (currentPage - 1) * limit;
        document.getElementById("product-container").innerHTML = ""; // Clear products
        loadProducts();
    }
});

document.getElementById("next-page").addEventListener("click", function (e) {
    e.preventDefault();
    if (currentPage < totalPages) {
        currentPage++;
        offset = (currentPage - 1) * limit;
        document.getElementById("product-container").innerHTML = ""; // Clear products
        loadProducts();
    }
});

function updatePaginationUI() {
    document.getElementById("current-page").innerText = currentPage;
    document.getElementById("total-pages").innerText = totalPages;

    document.getElementById("prev-page").style.display = (currentPage > 1) ? "block" : "none";
    document.getElementById("next-page").style.display = (currentPage < totalPages) ? "block" : "none";
}


</script>


<body>

    <?php include("header.php"); ?>

    <main class="container py-4 mt-5">
        <h1 class="text-center mb-4">Our Mice Collection</h1>

        <!-- Product Filter -->
        <div class="text-center mb-4">
            <a href="products.php?category=all" class="btn btn-primary mx-2">All</a>
            <a href="products.php?category=gaming" class="btn btn-outline-primary mx-2">Gaming Mice</a>
            <a href="products.php?category=office" class="btn btn-outline-primary mx-2">Office Mice</a>
            <a href="products.php?category=coding" class="btn btn-outline-primary mx-2">Coding Mice</a>
        </div>

        <!-- Product Grid -->
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-5 g-4" id="product-container">
                <!-- Products will be loaded dynamically here -->
            </div>

            <div class="text-center mt-3">
                <button id="load-more" class="btn btn-secondary">Load More</button>
            </div>

            <!-- Pagination (Hidden Initially) -->
            <!-- Pagination (Hidden Until Needed) -->
            <!-- Pagination -->
            <nav id="pagination" style="display: none;">
                <ul class="pagination justify-content-center mt-4">
                    <li class="page-item">
                        <a class="page-link" href="#" id="prev-page">Previous</a>
                    </li>
                    <span id="page-indicator" class="mx-3">Page <span id="current-page">1</span> of <span id="total-pages">1</span></span>
                    <li class="page-item">
                        <a class="page-link" href="#" id="next-page">Next</a>
                    </li>
                </ul>
            </nav>



        </div>
    </main>

    <?php include("footer.php"); ?>

</body>
</html>
