<?php
if (isset($_GET['id'])) {
    // Connect to the database
    $db = new mysqli('localhost', 'root', '', 'userform');
    if ($db->connect_error) {
        die('Connection error: ' . $db->connect_error);
    }

    $id = $_GET['id'];
    $query = "SELECT file_path FROM materials WHERE id = $id";
    $result = $db->query($query);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $file_path = $row['file_path'];

        header('Content-Type: application/pdf'); // Set the appropriate content type for PDFs
        header('Content-Disposition: attachment; filename="study_material.pdf"'); // Customize the filename if needed
        readfile($file_path);
        exit;
    }
}
?>
materials