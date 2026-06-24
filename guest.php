<!DOCTYPE html>
<html>

<head>
	<title> Guest Information</title>
</head>

<?php
require 'config.php'; // include file connect to db
include 'index.php';
$sql = "SELECT * FROM Guest";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h3>Current Guest Records</h3>";
 echo "<table border='1'>
		<tr>
			<th>NRIC</th>
			<th>Name</th>
			<th>No Phone</th>
			<th>Room ID</th>
			


		</tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
			<td> ". $row["NoIC"]. "</td>
			<td> ". $row["guestname"]. " </td>
			<td> ". $row["guestphone"]. "</td>
			<td> ". $row["RoomID"]. " </td>
			

	     </tr>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>