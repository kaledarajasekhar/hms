<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System - Patient Table</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	color: #4CAF50;
	padding: 20px;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	border-radius: 8px;
}

th, td {
	padding: 12px;
	text-align: center;
	border: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

td {
	color: #333;
}

.table-container {
	text-align: center;
}

.add-button {
	padding: 10px 15px;
	margin: 20px 0;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.add-button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<h1>Hospital Management System - Patient Information</h1>

	<div class="table-container">
		<a href="addpatient.jsp">
			<button class="add-button">Add New Patient</button>
		</a>
		<table>
			<thead>
				<tr>
					<th>Patient ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Phone</th>
					<th>City</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				ResultSet r = (ResultSet) request.getAttribute("rs");
				while (r.next()) {
				%>
				<tr>
					<td><%=r.getString(1)%></td>
					<td><%=r.getString(2)%></td>
					<td><%=r.getString(3)%></td>
					<td><%=r.getString(4)%></td>
					<td><%=r.getString(5)%></td>
					<td><%=r.getString(6)%></td>
					<td><a href="delete?id=<%=r.getInt(1)%>">
							<button>Delete</button>
					</a></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
	</div>

</body>
</html>
