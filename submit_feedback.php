<?php
$mysqli = new mysqli("localhost", "root", "", "userform");

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_name = $_POST["student_name"];
    $feedback = $_POST["feedback"];

    // Insert feedback into the database
    $sql = "INSERT INTO feedback (student_name, feedback) VALUES ('$student_name', '$feedback')";
    if ($mysqli->query($sql) === true) {
        // Redirect to home.php after successful submission
        header("Location: home.php");
        exit; // Make sure to exit to prevent further execution
    } else {
        echo "Error: " . $sql . "<br>" . $mysqli->error;
    }

    $mysqli->close();
}
?>
