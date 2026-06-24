<!DOCTYPE html>
<html>

<head>
	<title> Staff Information </title>
</head>

<?php
require 'config.php'; 
include 'index.php';
$sql = "SELECT * FROM Staff";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h3>Current Staff Records</h3>";

 echo "<table border='1'>
		<tr>

			<th>Staff ID</th>
			<th> Name </th>
			<th>Phone Number</th>
			

		</tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
			
			<td> ". $row["StaffID"]. " </td>
			<td> ". $row["Staffname"]. " </td>
			<td> ". $row["staffphone"]. " </td>
			
			

	     </tr>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>