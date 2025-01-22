<%@page import="com.ps.model.Std_Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit student</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="user-navbar.html"%>
	<div class="row">
		<%@ include file="sidebar.html"%>

		<div
			class="col-md-9 d-flex align-items-center justify-content-center mt-5">

			<%
			Std_Data st = (Std_Data) session.getAttribute("edit_std");
			%>
			<div
				class="d-flex align-items-center justify-content-center border border-bottom rounded w-50 ">
				<form action="updateStd" method="post" class="m-5">
					<h4>Edit student</h4>
					<div class="mb-3 mt-5">
						<label for="exampleFormControlInput1" class="form-label">ID</label>
						<input type="number" class="form-control" name="id" required
							value="<%=st.getId()%>">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Name</label>
						<input type="text" class="form-control" name="name" required
							value="<%=st.getName()%>">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Course</label>
						<input type="text" class="form-control" name="course" required
							value="<%=st.getCourse()%>">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Fees</label>
						<input type="number" class="form-control" name="fees"
							value="<%=st.getFees()%>">
					</div>

					<div class="d-flex justify-content-center">
						<input type="submit" class="btn btn-warning" value="Update" />
					</div>


				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>