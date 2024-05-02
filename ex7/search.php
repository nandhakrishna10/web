<?php
// Simulated product list with descriptions
$products = array(
    "Apple" => "A sweet and crunchy fruit, often eaten raw or used in cooking.",
    "Banana" => "A curved, yellow fruit with a soft, creamy flesh.",
    "Orange" => "A round citrus fruit with a bright orange peel and juicy segments.",
    "Pineapple" => "A tropical fruit with a spiky skin and sweet, juicy flesh.",
    "Grapes" => "Small, round fruit that grows in clusters and comes in various colors.",
    "Mango" => "A tropical fruit with a sweet, juicy flesh and a distinctive aroma.",
    "Strawberry" => "Small, red fruit with seeds on the outside and a sweet flavor.",
    "Watermelon" => "Large, juicy fruit with green skin and pink or red flesh.",
    "Peach" => "Soft, fuzzy fruit with a juicy, sweet flesh and a stone in the center.",
    "Pear" => "A sweet and juicy fruit with a distinctive bell shape."
);

// Check if search query is provided
if(isset($_POST['query'])){
    $query = $_POST['query'];
    // Search the products array for matches
    $results = array();
    foreach ($products as $product => $description) {
        // Convert both query and product to lowercase for case-insensitive search
        if (stripos(strtolower($product), strtolower($query)) !== false || stripos(strtolower($description), strtolower($query)) !== false) {
            $results[] = array('name' => $product, 'description' => $description);
        }
    }
    // Output the search results as JSON
    echo json_encode($results);
}
?>
