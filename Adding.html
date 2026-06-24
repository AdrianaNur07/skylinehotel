<!DOCTYPE html>
<html>
<head>
    <title>Add Department & Service</title>
</head>
<body>

<?php
require 'config.php'; 
include 'index.php'; 


// Handle combined insert
if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['action'] == 'insert_all') {
    $StaffID        = $_POST['StaffID'];
    $DepartmentType = $_POST['DepartmentType'];
    $Position       = $_POST['Position'];
    $Scope          = $_POST['Scope'];
    $Salary         = $_POST['Salary'];

    // Insert into department
    $stmtDept = $conn->prepare("INSERT INTO department (StaffID, DepartmentType, Position) VALUES (?, ?, ?)");
    $stmtDept->bind_param("sss", $StaffID, $DepartmentType, $Position);

    // Insert into service
    $stmtServ = $conn->prepare("INSERT INTO service (StaffID, Scope, Salary) VALUES (?, ?, ?)");
    $stmtServ->bind_param("ssd", $StaffID, $Scope, $Salary);

    if ($stmtDept->execute() && $stmtServ->execute()) {
        echo "Department and Service records created successfully<br>";
    } else {
        echo "Error: " . $conn->error;
    }

    $stmtDept->close();
    $stmtServ->close();
}

?>

<!-- Combined Insert Form -->
<form method="post">
    <input type="hidden" name="action" value="insert_all">

    <label for="StaffID">Staff ID:</label>
    <select name="StaffID" id="StaffID" required>
        <option value="">-- Select Staff --</option>
        <?php
        // Query staff table for IDs and names
        $staffResult = $conn->query("SELECT StaffID, StaffName FROM staff ORDER BY StaffID");

        if ($staffResult && $staffResult->num_rows > 0) {
            while($row = $staffResult->fetch_assoc()) {
                echo "<option value='" . $row['StaffID'] . "'>" 
                     . $row['StaffID'] . " - " . $row['StaffName'] . "</option>";
            }
        } else {
            echo "<option value=''>No staff found</option>";
        }
        ?>
    </select><br>

    <label for="DepartmentType">Department:</label>
    <input type="text" name="DepartmentType" id="DepartmentType" required><br>

    <label for="Position">Position:</label>
    <input type="text" name="Position" id="Position" required><br>

    <label for="Scope">Scope:</label>
    <input type="text" name="Scope" id="Scope" required><br>

    <label for="Salary">Salary:</label>
    <input type="number" step="0.01" name="Salary" id="Salary" required><br>

    <input type="submit" value="Add Department & Service">
</form>


<?php


// Display table of data
$sql = "SELECT d.StaffID, d.DepartmentType, d.Position, s.Scope, s.Salary 
        FROM department d 
        LEFT JOIN service s ON d.StaffID = s.StaffID";

$result = $conn->query($sql);

if ($result === false) {
    echo " Error: " . $conn->error;
} elseif ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>Staff ID</th>
                <th>Department</th>
                <th>Position</th>
                <th>Scope</th>
                <th>Salary</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["StaffID"] . "</td>
                <td>" . $row["DepartmentType"] . "</td>
                <td>" . $row["Position"] . "</td>
                <td>" . $row["Scope"] . "</td>
                <td>" . $row["Salary"] . "</td>
             </tr>";
    }
    echo "</table>";
} else {
    echo " No records found in department & service tables.";
}

$conn->close();
?>


</body>
</html>
