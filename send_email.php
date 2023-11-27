<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $mail = $_POST["mail"];
    $message = $_POST["message"];

    // Validate form data (you can add more validation as needed)
    if (!empty($name) && !empty($mail) && !empty($message)) {
        // Set up email headers
        $to = "anandh172002@gmail.com"; // Replace with the recipient's email address
        $subject = "Contact Form Submission from $name";
        $headers = "From: $mail";

        // Compose the email message
        $email_message = "Name: $name\n";
        $email_message .= "Phone: $phone\n";
        $email_message .= "Email: $mail\n\n";
        $email_message .= "Message:\n$message";

        // Send the email
        if (mail($to, $subject, $email_message, $headers)) {
            // Clear form data (reset fields)
            $name = $phone = $mail = $message = "";

            // Redirect to "contact.html" after successful email sending
            header('Location: contact.html');
            exit; // Make sure to exit to prevent further execution
        }
    }
}
?>
