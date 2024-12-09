<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome To Hospital</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	color: #333;
	margin-top: 50px;
	font-size: 3em;
}

.container {
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 3 equal-width columns */
	gap: 30px; /* Space between columns */
	justify-items: center; /* Center items within each column */
	margin-top: 40px;
	padding: 0 20px;
}

.column {
	display: flex;
	flex-direction: column;
	gap: 15px; /* Space between buttons in each column */
	text-align: center;
}

a {
	text-decoration: none;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 15px 30px;
	font-size: 1.2em;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.3s ease;
	width: 100%; /* Full width for buttons */
	max-width: 250px; /* Max width for buttons */
}

button:hover {
	background-color: #45a049;
	transform: scale(1.05); /* Slight zoom effect */
}

button:focus {
	outline: none;
}
/* Responsive design: stack columns vertically on smaller screens */
@media ( max-width : 768px) {
	.container {
		grid-template-columns: 1fr; /* Stack columns vertically */
	}
}
</style>
</head>
<body>
	<h1>Welcome To Hospital</h1>
	<div class="container">
		<!-- Column 1: Add Patient & View All Patients -->
		<div class="column">
			<a href="addpatient.jsp">
				<button>Add Patient</button>
			</a> <a href="viewallpatients">
				<button>View All Patients</button>
			</a>
		</div>

		<!-- Column 2: Add Doctor & View All Doctors -->
		<div class="column">
			<a href="adddoctor.jsp">
				<button>Add Doctor</button>
			</a> <a href="viewalldoctors">
				<button>View All Doctors</button>
			</a>
		</div>

		<!-- Column 3: Add Department & View All Departments -->
		<div class="column">
			<a href="adddept.jsp">
				<button>Add Department</button>
			</a> <a href="viewalldepts">
				<button>View All Departments</button>
			</a>
		</div>
	</div>
</body>
</html>
