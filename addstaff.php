<!DOCTYPE html>
<html>
<head>
	<title>Add Staff</title>
</head>
<body>

<?php
require 'config.php'; 
include 'index.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $StaffID = trim($_POST['StaffID']);
    $Staffname = trim($_POST['Staffname']);
    $staffphone = trim($_POST['staffphone']);

    // Check if StaffID already exists
    $check = mysqli_query($conn, "SELECT StaffID FROM staff WHERE StaffID='$StaffID'");

    if (mysqli_num_rows($check) > 0) {

        echo "<script>alert('Staff ID already exists! Please use another Staff ID.');</script>";

    } else {

        $sql = "INSERT INTO staff (StaffID, Staffname, staffphone)
                VALUES ('$StaffID', '$Staffname', '$staffphone')";

        if ($conn->query($sql) === TRUE) {

            echo "<script>alert('New staff record created successfully!');</script>";

        } else {

            echo "<script>alert('Error: ".$conn->error."');</script>";



        }
    }
}

?>


<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <table>
		<tr>
			<td>
				<label for="StaffID">Staff ID:</label>
				<input type="text" name="StaffID" required>
			</td>
		</tr>
    
		<tr>
			<td>
				<label for="Staffname">Name :</label>
				<input type="text" name="Staffname" required>
			</td>
		</tr>
<tr>
			<td>
				<label for="staffphone">Staff Phone Number:</label>
				<input type="text" name="staffphone" required>
			</td>
		</tr>

<tr>

		<tr>
			<td>
				<input type="submit" value="Submit">
			</td>
		</tr>
		</table>

</form>

</body>
</html>
