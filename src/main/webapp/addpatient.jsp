<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f7fa;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	color: #333;
	margin-top: 50px;
	font-size: 2.5em;
}

form {
	width: 50%;
	margin: 30px auto;
	background-color: #ffffff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="text"] {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 1em;
}

input[type="text"]:focus {
	border-color: #4CAF50;
	outline: none;
}

button {
	width: 100%;
	padding: 14px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 1.2em;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

button:focus {
	outline: none;
}

.form-container {
	background-color: #f9f9f9;
	border-radius: 12px;
	padding: 20px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<h1>Enter Patient Details</h1>
	<div class="form-container">
		<form action="addpatient" method="POST">
			<input type="text" name="id" placeholder="Enter Patient ID" required>
			<input type="text" name="name" placeholder="Enter Patient Name"
				required> <input type="text" name="age"
				placeholder="Enter Age" required> <input type="text"
				name="gender" placeholder="Enter Gender" required> <input
				type="text" name="phone" placeholder="Enter Mobile Number" required>
			<input type="text" name="city" placeholder="Enter City" required>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>
