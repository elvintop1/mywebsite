document.addEventListener("DOMContentLoaded", function() {
    let offset = 0;
    const limit = 20; // Load 20 initially, then 10 each time
    let isLoading = false;
    const category = "all"; // Default category

    function loadProducts() {
        if (isLoading) return;
        isLoading = true;

        fetch(`products.php?offset=${offset}&category=${category}`)
            .then(response => response.json())
            .then(products => {
                if (products.length > 0) {
                    appendProducts(products);
                    offset += limit;
                }
                isLoading = false;
            })
            .catch(error => console.error("Error loading products:", error));
    }

    function appendProducts(products) {
        const grid = document.getElementById("product-grid");
        products.forEach(product => {
            const productHTML = `
                <div class="col-md-2 mb-4">
                    <div class="card">
                        <img src="images/products/${product.image}" class="card-img-top" alt="${product.name}">
                        <div class="card-body text-center">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text text-primary"><strong>$${parseFloat(product.price).toFixed(2)}</strong></p>
                            <a href="product.php?id=${product.id}" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>`;
            grid.insertAdjacentHTML("beforeend", productHTML);
        });
    }

    // Load first 20 products
    loadProducts();

    // Load more when scrolling down
    window.addEventListener("scroll", function() {
        if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 100) {
            loadProducts();
        }
    });

    // Load more when clicking "Load More" button
    document.getElementById("load-more").addEventListener("click", loadProducts);
});
