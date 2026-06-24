<!DOCTYPE html>
<html>

<head>
	<title> Department & Services</title>
</head>

<?php
require 'config.php'; 
include 'index.php';
 //include menu list from menu.php, you may edit accordingly

$sql = "
SELECT 
    d.StaffID,
    d.DepartmentType,
    d.Position,
    s.Scope,
    s.Salary
FROM department d
JOIN service s
ON d.StaffID = s.StaffID
";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h3>Current Department & Service Records</h3>";
 echo "<table border='1'>
		<tr>
			<th>Staff ID</th>
			<th>Department</th>
			<th>Position</th>
			<th>Job Scope</th>
			<th>Salary (RM)</th>
			
			

		</tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
			<td> ". $row["StaffID"]. "</td>
			<td> ". $row["DepartmentType"]. " </td>
			<td> ". $row["Position"]. "</td>
			<td> ". $row["Scope"]. " </td>
			<td> ". $row["Salary"]. "</td>
			

	     </tr>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>
