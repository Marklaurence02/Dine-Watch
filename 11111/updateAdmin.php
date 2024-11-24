<?php
// updateAdmin.php

include_once "../assets/config.php";  // Include your DB connection file

session_start();

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
    echo json_encode(['status' => 'error', 'message' => 'You must be logged in to perform this action.']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = intval($_POST['user_id']);
    $first_name = trim($_POST['first_name']);
    $middle_initial = trim($_POST['middle_initial']);
    $last_name = trim($_POST['last_name']);
    $username = trim($_POST['username']);
    $role = trim($_POST['role']);
    $contact_number = trim($_POST['contact_number']);
    $email = trim($_POST['email']);
    $address = trim($_POST['address']);

    // Validate required fields
    if (empty($first_name) || empty($last_name) || empty($username) || empty($role) || empty($contact_number) || empty($email)) {
        echo json_encode(['status' => 'error', 'message' => 'All fields are required.']);
        exit;
    }

    // Prepare SQL statement for updating user details
    $sql = "UPDATE users SET first_name = ?, middle_initial = ?, last_name = ?, username = ?, role = ?, contact_number = ?, email = ?, address = ?, updated_at = NOW() WHERE user_id = ?";
    $stmt = $conn->prepare($sql);

    if ($stmt === false) {
        echo json_encode(['status' => 'error', 'message' => 'Database prepare error: ' . $conn->error]);
        exit;
    }

    // Bind parameters
    $stmt->bind_param("ssssssssi", $first_name, $middle_initial, $last_name, $username, $role, $contact_number, $email, $address, $user_id);

    // Execute the statement
    if ($stmt->execute()) {
        echo json_encode(['status' => 'success', 'message' => 'User  updated successfully!']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Error updating user: ' . $stmt->error]);
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method.']);
}
?>