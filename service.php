<!DOCTYPE html>
<html>

<head>
	<title> Service </title>
</head>

<?php
require 'config.php'; 
include 'index.php'; 
$sql = "SELECT * FROM service";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
 echo "<table border='1'>
		<tr>
			<th>Staff ID</th>
			<th>Job Scope</th>
			<th>Salary (RM)</th>
			
			


		</tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
			<td> ". $row["StaffID"]. "</td>
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