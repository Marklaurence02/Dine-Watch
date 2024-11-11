<?php
session_name("user_session");
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

include 'config.php';
$message = '';
$error = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = trim(htmlspecialchars($_POST['email']));
    $password = trim(htmlspecialchars($_POST['password']));

    if (!empty($email) && !empty($password)) {
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $error = "Invalid email format.";
        } else {
            $sql = "SELECT user_id, first_name, last_name, username, password_hash, role 
                    FROM users WHERE email = ? AND role = 'General User'";
            $stmt = $conn->prepare($sql);
            
            if ($stmt) {
                $stmt->bind_param('s', $email);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result && $result->num_rows > 0) {
                    $user = $result->fetch_assoc();

                    if (password_verify($password, $user['password_hash'])) {
                        $_SESSION['email'] = $email;
                        $_SESSION['role'] = 'General User';
                        $_SESSION['username'] = $user['username'];
                        $_SESSION['user_id'] = $user['user_id'];

                        // Update the user's status to 'online'
                        $updateStatusSQL = "UPDATE users SET status = 'online' WHERE user_id = ?";
                        $updateStmt = $conn->prepare($updateStatusSQL);
                        $updateStmt->bind_param('i', $user['user_id']);
                        $updateStmt->execute();
                        $updateStmt->close();

                        // Assign a staff member to the user if not already assigned
                        if (!checkExistingAssignment($user['user_id'], $conn)) {
                            assignStaffToUser($user['user_id'], $conn);
                        }

                        // Redirect to the user panel
                        header('Location: User-panel.php');
                        exit();
                    } else {
                        $error = "Invalid password. Please try again.";
                    }
                } else {
                    $error = "No user found with this email.";
                }
                $stmt->close();
            } else {
                $error = "Database query error: " . $conn->error;
            }
        }
    } else {
        $error = "Please fill in all the required fields.";
    }
}

$conn->close();

if (!empty($error)) {
    echo "<p style='color: red;'>$error</p>";
}

// Function to check if the user already has an assigned staff member
function checkExistingAssignment($userId, $conn) {
    $checkSQL = "SELECT assigned_staff_id FROM user_staff_assignments WHERE user_id = ?";
    $stmt = $conn->prepare($checkSQL);
    $stmt->bind_param('i', $userId);
    $stmt->execute();
    $stmt->store_result();

    $isAssigned = $stmt->num_rows > 0;
    $stmt->close();
    
    return $isAssigned;
}

// Function to assign a staff member to a new general user
function assignStaffToUser($userId, $conn) {
    // Get the list of all staff members and their assignment counts
    $staffSQL = "
        SELECT u.user_id, COUNT(usa.user_id) AS assigned_count 
        FROM users u
        LEFT JOIN user_staff_assignments usa ON u.user_id = usa.assigned_staff_id
        WHERE u.role = 'Staff'
        GROUP BY u.user_id
        ORDER BY assigned_count ASC, u.user_id ASC
        LIMIT 1";
    
    $staffStmt = $conn->prepare($staffSQL);
    $staffStmt->execute();
    $staffResult = $staffStmt->get_result();
    
    if ($staffResult && $staffResult->num_rows > 0) {
        $staff = $staffResult->fetch_assoc();
        $assignedStaffId = $staff['user_id'];

        // Assign the selected staff to the user
        $assignSQL = "INSERT INTO user_staff_assignments (user_id, assigned_staff_id) VALUES (?, ?)";
        $assignStmt = $conn->prepare($assignSQL);
        $assignStmt->bind_param('ii', $userId, $assignedStaffId);
        $assignStmt->execute();
        $assignStmt->close();
    }

    $staffStmt->close();
}
?>
