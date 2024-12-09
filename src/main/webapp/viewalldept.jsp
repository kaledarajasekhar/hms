<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Department Table</title>
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
	font-size: 2.5em;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
	border-radius: 8px;
}

th, td {
	padding: 15px;
	text-align: center;
	border: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
	font-size: 1.2em;
}

tr:nth-child(even) {
	background-color: #e6f7e6;
}

tr:hover {
	background-color: #d9f7d9;
}

td {
	color: #333;
	font-size: 1em;
}

button {
	background-color: #ff6347; /* Red color for delete */
	color: white;
	padding: 8px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

button:hover {
	background-color: #ff4500; /* Darker red on hover */
}

button:focus {
	outline: none;
}

.add-button {
	padding: 10px 15px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 20px;
}

.add-button:hover {
	background-color: #45a049;
}

.button-container {
	text-align: center; /* Center-align the "Add Department" button */
	margin-top: 20px;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>


	<table>
		<h1>Hospital Management System - Department Information</h1>

		<thead>
			<tr>
				<th>Dept Number</th>
				<th>Dept Name</th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet r = (ResultSet) request.getAttribute("rs");
			while (r.next()) {
			%>
			<tr>
				<td><%=r.getString(1)%></td>
				<!-- Dept Number -->
				<td><%=r.getString(2)%></td>
				<!-- Dept Name -->
				
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<!-- Align buttons below the table -->
	<div class="button-container">
		<!-- <a href="adddept.jsp">
			<button class="add-button">Add Department</button>
		</a> -->
	</div>

</body>
</html>
