<?php
	session_start();
	if(empty($_SESSION['id'])){
		$_SESSION['id'] = 0;
	}
	if ($_SESSION['id'] == 10) {
		$_SESSION['id'] = 0;
	}
	$_SESSION['id']++;
	echo "ID value: " . $_SESSION['id'];

	if(isset($_SESSION['last_activity']) && (time() - $_SESSION['last_activity'] > 10)){
		session_unset();
		session_destroy();
		echo '
		<script language="javascript">
			alert("Your session have expired. Refresh the page to reset");
		</script>
		';
	}
	$_SESSION['last_activity'] = time();

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Item List</title>
	<style>
		#container {display: flex;}
	</style>
</head>
<body>
	<header>Item List</header>
	<div id="container">
	<?php 
		// echo "this is exist";
		$id = $_SESSION['id'];
		// $connection = mysqli_connect("localhost", "root", "", "fabelio_test");
		$connection = mysqli_connect("us-cdbr-east-05.cleardb.net", "b83bd3156c2ec4", "d11326cf", "heroku_b00850d332e4359");
		if (!$connection)
			die("Connection Failed: " . mysqli_error());

		$result = mysqli_query($connection, "SELECT item_name, item_price, item_dimension, item_colour, item_material, item_url FROM items WHERE item_id = " . $id);
		if (!$result)
			die("Cannot get result: " . mysqli_error());

		while ($row = mysqli_fetch_array($result)) {
			$item_name 		= $row['item_name'];
			$item_price 	= $row['item_price'];
			$item_dimension = $row['item_dimension'];
			$item_colour	= $row['item_colour'];
			$item_material	= $row['item_material'];
			$image_url 		= $row['item_url'];
		}

		// echo "<br>".$image_url;
		echo "<img width='50%' height='50%' src='".$image_url."' alt='sofa_2_dudukan_vienna'>";
		echo "
		<table>
			<tr>
				<th>Item Name</th>
				<td>".$item_name."</td>
			<tr>
			<tr>
				<th>Price</th>
				<td>".$item_price."</td>
			<tr>
			<tr>
				<th>Dimension</th>
				<td>".$item_dimension."</td>
			<tr>
			<tr>
				<th>Available Colours</th>
				<td>".$item_colour."</td>
			<tr>
			<tr>
				<th>Material</th>
				<td>".$item_material."</td>
			<tr>
		</table>
		";

	?>
	</div>
</body>