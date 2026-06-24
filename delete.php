<?php
require 'config.php'; 
include 'index.php'; 

// Handle deletion first
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $deleteData = $_POST['deleteData'];
    $sql = "DELETE FROM staff WHERE StaffID='$deleteData'";
    if ($conn->query($sql)) {
        echo "<p>Deleted successfully</p>";
    } else {
        echo "<p>Error: " . $conn->error . "</p>";
    }
}
?>

<!-- FORM AT THE TOP -->
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
   <table>
        <tr>
            <td>Enter the ID of the staff to be deleted:</td>
        </tr>
        <tr>
            <td>
                <label for="deleteData">Staff ID:</label>
                <input type="text" name="deleteData" required>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Delete">
                <input type="reset" value="Reset">
            </td>
        </tr>
    </table>
</form>

<?php
// TABLE AT THE BOTTOM
$sql = "SELECT * FROM staff";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h3>Current Staff Records</h3>";
    echo "<table border='1'>
            <tr>
                <th>Staff ID</th>
                <th>Name</th>
                <th>Phone Number</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row["StaffID"]."</td>
                <td>".$row["Staffname"]."</td>
                <td>".$row["staffphone"]."</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "No records found.";
}

$conn->close();
?>
