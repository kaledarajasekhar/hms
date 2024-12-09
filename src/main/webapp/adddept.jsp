<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Page</title>
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
	width: 40%;
	margin: 30px auto;
	background-color: #ffffff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="text"] {
	width: 100%;
	padding: 10px;
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
	padding: 12px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 1.1em;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

button:focus {
	outline: none;
}
</style>
</head>
<body>
	<h1>Welcome to Department Page</h1>
	<form action="adddept" method="POST">
		<input type="text" name="id" placeholder="Enter Department Number"
			required> <input type="text" name="name"
			placeholder="Enter Department Name" required>
		<button type="submit">Submit</button>
	</form>
</body>
</html>
