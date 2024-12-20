<?php
session_name("owner_session");
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once "../assets/config.php";

$orderID = intval($_GET['orderID'] ?? 0);
if ($orderID <= 0) {
    echo "<p>Invalid Order ID.</p>";
    exit;
}

// Fetch order details
$order_sql = "
    SELECT o.order_id, 
           CONCAT(u.first_name, ' ', u.last_name) AS customer_name, 
           u.contact_number, 
           o.order_time, 
           o.total_amount AS order_total,
           o.status AS order_status,
           o.payment_method,
           o.order_details,
           o.feedback,
           o.created_at,
           o.updated_at
    FROM orders o
    LEFT JOIN users u ON o.user_id = u.user_id
    WHERE o.order_id = ?
";

$order_stmt = $conn->prepare($order_sql);
$order_stmt->bind_param("i", $orderID);
$order_stmt->execute();
$order_result = $order_stmt->get_result();
$order_data = $order_result->fetch_assoc();
$order_stmt->close();
?>

<div class="container">
    <h3>Order Receipt Details</h3>
    <p><strong>Order #<?= htmlspecialchars($order_data['order_id']) ?></strong></p>

    <!-- Order Summary Table (Now with DataTable headers) -->
    <table id="orderDetailsTable" class="table table-bordered">
        <thead>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Customer:</strong></td>
                <td><?= htmlspecialchars($order_data['customer_name']) ?></td>
            </tr>
            <tr>
                <td><strong>Contact:</strong></td>
                <td><?= htmlspecialchars($order_data['contact_number']) ?></td>
            </tr>
            <tr>
                <td><strong>Order Date:</strong></td>
                <td><?= date("F j, Y, g:i a", strtotime($order_data['order_time'])) ?></td>
            </tr>

            <tr>
                <td><strong>Payment Method:</strong></td>
                <td><?= htmlspecialchars($order_data['payment_method']) ?></td>
            </tr>
          
            <tr>
                <td><strong>Order Details:</strong></td>
                <td><?= nl2br(htmlspecialchars($order_data['order_details'])) ?></td>
            </tr>
            <tr>
                <td><strong>Order Status:</strong></td>
                <td>
                    <!-- Display order status as a button in the UI -->
                    <div class="dropdown">
                        <button class="btn <?= htmlspecialchars($order_data['order_status']) ?> dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?= htmlspecialchars($order_data['order_status']) ?>
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="javascript:void(0);" onclick="ChangeOrderStatus(<?= $orderID ?>, 'Pending')">Pending</a>
                            <a class="dropdown-item" href="javascript:void(0);" onclick="ChangeOrderStatus(<?= $orderID ?>, 'In-Progress')">In-Progress</a>
                            <a class="dropdown-item" href="javascript:void(0);" onclick="ChangeOrderStatus(<?= $orderID ?>, 'Paid in advance')">Paid in advance</a>
                            <a class="dropdown-item" href="javascript:void(0);" onclick="ChangeOrderStatus(<?= $orderID ?>, 'Completed')">Completed</a>
                            <a class="dropdown-item" href="javascript:void(0);" onclick="ChangeOrderStatus(<?= $orderID ?>, 'Canceled')">Canceled</a>
                        </div>
                    </div>
                </td>
            </tr>
        
            <tr>
                <td><strong>Total Amount:</strong></td>
                <td>&#8369;<?= number_format($order_data['order_total'], 2) ?></td>
            </tr>

        </tbody>
    </table>

</div>
<script>
$(document).ready(function () {
    var today = new Date();
    var formattedDate = today.getFullYear() + '-' + (today.getMonth() + 1).toString().padStart(2, '0') + '-' + today.getDate().toString().padStart(2, '0');

    // Initialize DataTable with Export and Print buttons
    $('#orderDetailsTable').DataTable({
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'print',
                title:  'Order Receipt - ' + formattedDate, // Centered title for print
                text: 'Print Receipt',
                exportOptions: {
                    columns: [0, 1] // Print only the first two columns: Field and Details
                },
                customize: function(win) {
                    // Add logo at the top of the printed page
                    $(win.document.body).prepend('<img src="/Images/logo.png" style="width: 100px; height: auto; margin-bottom: 20px;"/>');

                    // Replace the order status button with text during print/export
                    $(win.document.body).find('.dropdown-toggle').each(function() {
                        var text = $(this).text();
                        $(this).replaceWith('<span>' + text + '</span>');
                    });

                    // Title and custom styles for printed page
                    $(win.document.body).prepend('<h2 style="text-align: center; color: #FF6A13; font-family: Arial, sans-serif; font-weight: bold; font-size: 20px; margin-top: 0;">Order Receipt - ' + formattedDate + '</h2>');

                    // Style the header row
                    $(win.document.body).find('th').css({
                        'background-color': '#FF6A13',
                        'color': 'white',
                        'font-weight': 'bold',
                        'font-size': '14px',
                        'text-align': 'center'
                    });

                    // Alternate row colors for readability
                    $(win.document.body).find('tr:nth-child(even)').css('background-color', '#FFEBE0');
                    $(win.document.body).find('tr:nth-child(odd)').css('background-color', '#FFE0CC');

                    // Customize the page layout for printing
                    $(win.document.body).css({
                        'font-family': 'Arial, sans-serif',
                        'font-size': '12px'
                    });

                    // Adjust the width of the first column (Field) to make it more readable
                    $(win.document.body).find('table').css('width', '100%');
                    $(win.document.body).find('td').css('padding', '8px');
                }
            }
        ],
        responsive: true,
        lengthChange: false, // Hide the length change dropdown
        paging: false, // Disable pagination
        searching: false, // Disable search bar
        ordering: false, // Disable ordering of columns
        info: false // Disable the "Showing X to Y of Z entries" text
    });
});
</script>


