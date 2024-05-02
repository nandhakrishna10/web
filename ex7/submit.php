<?php
// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Retrieve form data
    $username = $_POST['username'];
    $email = $_POST['email'];

    // Perform any desired operations with the form data
    // For this example, let's just return a success message with the submitted data
    $response = "Form submitted successfully!\n";
    $response .= "Username: " . $username . "\n";
    $response .= "Email: " . $email;

    // Return the response
    echo $response;
} else {
    // If accessed directly, return an error message
    echo "Direct access is not allowed";
}
?>
