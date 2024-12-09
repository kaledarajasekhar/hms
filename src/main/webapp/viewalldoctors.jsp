<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System - Doctor Table</title>
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

.table-container {
	text-align: center;
	margin-top: 40px;
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

button {
	background-color: #ff6347;
	color: white;
	padding: 8px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

button:hover {
	background-color: #ff4500;
}

button:focus {
	outline: none;
}
</style>
</head>
<body>

	<h1>Hospital Management System - Doctor Information</h1>

	<div class="table-container">
		<a href="adddoctor.jsp">
			<button class="add-button">Add New Doctor</button>
		</a>
		<table>
			<thead>
				<tr>
					<th>Doctor ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Phone</th>
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
					<td><a href="deletedoctor?id=<%=r.getInt(1)%>"><button>Delete</button></a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
