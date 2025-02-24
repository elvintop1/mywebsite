<?php
include("database.php");

$limit = 10; // Number of products per lazy load
$page_limit = 20; // Maximum products per page before pagination
$offset = isset($_GET['offset']) ? (int)$_GET['offset'] : 0;
$current_page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$category = isset($_GET['category']) ? $_GET['category'] : 'all';

// Calculate correct offset based on page number
$offset = ($current_page - 1) * $limit;

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

// Fetch products based on offset & limit
$sql = "SELECT * FROM products";
if ($category !== 'all') {
    $sql .= " WHERE category = ?";
}
$sql .= " LIMIT ?, ?";

$stmt = $conn->prepare($sql);
if ($category !== 'all') {
    $stmt->bind_param("sii", $category, $offset, $limit);
} else {
    $stmt->bind_param("ii", $offset, $limit);
}
$stmt->execute();
$result = $stmt->get_result();

$products = [];
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}

$response = [
    "products" => $products,
    "total_products" => $total_products,
    "total_pages" => $total_pages,
    "current_page" => $current_page
];

echo json_encode($response);
exit;
?>
