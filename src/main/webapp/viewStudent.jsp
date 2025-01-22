<%@page import="java.util.List"%>
<%@page import ="com.ps.model.Std_Data" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<body>
	<%@ include file="user-navbar.html"%>

	<div class="row">

		
			<%@ include file="sidebar.html"%>
		


		<div class="col-md-9 m-5">
		
		<%
			List<Std_Data> std = (List<Std_Data>) session.getAttribute("std_list");
			if(std != null && !std.isEmpty()) { 
		%>
			<table class="table table-hover border">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">Name</th>
						<th scope="col">Course</th>
						<th scope="col">Fees</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<% for(Std_Data stdl : std) { %>
				<tbody>
					<tr>
						<th scope="row"><%= stdl.getId() %></th>
						<td><%= stdl.getName()%> </td>
						<td><%= stdl.getCourse() %>  </td>
						<td><%= stdl.getFees() %>  </td>
						<td><a class="btn btn-warning" href="editStudent?id=<%= stdl.getId() %>">Edit</a></td>
						<td><a class="btn btn-danger" href="deleteStudent?id=<%= stdl.getId() %>">Delete</a></td>
					</tr>
				</tbody>
				<% } } %>
			</table>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>