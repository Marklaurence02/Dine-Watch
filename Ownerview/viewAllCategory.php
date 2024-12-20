<?php
session_name("owner_session");
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include_once "../assets/config.php"; // Include database connection
?>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-12">
            <h2 class="text-center">Category Management</h2>
            <button type="button" class="btn btn-secondary" style="height:40px" data-toggle="modal" data-target="#categoryModal">
      Add Category
    </button>
            <!-- Table for Categories -->
            <div class="table-responsive">
                <table id="categoriesTable" class="table table-bordered" width="100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category Name</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "SELECT * FROM product_categories";
                        $result = $conn->query($sql);

                        if ($result && $result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                        ?>
                            <tr>
                                <td><?= htmlspecialchars($row["category_id"]) ?></td>
                                <td><?= htmlspecialchars($row["category_name"]) ?></td>
                                <td>
                                    <button 
                                        class="btn btn-primary openPopup" 
                                        data-id="<?= htmlspecialchars($row['category_id']) ?>">
                                        Edit
                                    </button>
                                    <button class="btn btn-danger btn-sm" onclick="categoryDelete('<?= $row['category_id'] ?>')">Delete</button>
                                    </td>
                            </tr>
                        <?php
                            }
                        } else {
                            echo "<tr><td colspan='3'>No categories found.</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Modal for Adding Category -->
<div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">New Category</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="categoryForm" onsubmit="addCategory(); return false;">
                    <div class="form-group">
                        <label for="add_category_name">Category Name:</label>
                        <input type="text" class="form-control" id="add_category_name" name="category_name" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-secondary" style="height:40px">Add Category</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-secondary" data-bs-dismiss="modal" style="height:40px">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="editModalLabel">Edit Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="editCategoryContent">
                <!-- Form content will be dynamically loaded here -->
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        // Handle Edit Button Click
        $('.openPopup').on('click', function () {
            const categoryId = $(this).data('id'); // Get category ID
            $('#editCategoryContent').html('<span>Loading...</span>'); // Show loading text

            // Load the form dynamically from editcategory-form.php
            $.ajax({
                url: '../Ownerview/editcategory-form.php',
                type: 'POST',
                data: { record: categoryId },
                success: function (data) {
                    $('#editCategoryContent').html(data); // Load form into modal body
                    $('#editModal').modal('show'); // Show the modal
                    // Disable scroll on the body when the modal is open
                    $('body').css('overflow', 'hidden');
                    $('html').css('overflow', 'hidden'); // Also disable scroll on html element
                },
                error: function (xhr, status, error) {
                    console.error("Error loading category form:", error);
                    $('#editCategoryContent').html('<span>Error loading category data. Please try again.</span>'); // Display error message
                    alert("An error occurred while loading the category form.");
                }
            });
        });

        // Handle closing the modal and restoring the scroll
        $('#editModal').on('hidden.bs.modal', function () {
            $('body').css('overflow', 'auto'); // Restore scroll on body
            $('html').css('overflow', 'auto'); // Restore scroll on html element
        });

        // DataTable Initialization with some configurations for smooth performance
        if ($('#categoriesTable').length) {
            new DataTable('#categoriesTable', {
                paging: true,
                searching: true,
                ordering: true,
                responsive: true,
                autoWidth: false,
                pageLength: 10,
                lengthMenu: [5, 10, 25, 50],
                language: {
                    search: "_INPUT_", // Customize the search input placeholder
                    searchPlaceholder: "Search categories...",
                    lengthMenu: "Show _MENU_ entries",
                    info: "Showing _START_ to _END_ of _TOTAL_ entries",
                    infoEmpty: "No entries available",
                    infoFiltered: "(filtered from _MAX_ total entries)",
                    paginate: {
                        first: "<<",
                        last: ">>",
                        next: ">",
                        previous: "<"
                    }
                }
            });
        }
    });
</script>


