<%@page import="com.ps.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<%
		Student st = (Student) session.getAttribute("std_session");
	%>

	<%@ include file="user-navbar.html"%>

	<div class="container-fluid">

		<div class="row">
			<%@ include file="sidebar.html"%>

			<div class="col-md-9">
				<div class="m-5">
					<h2>
						Welcome to profile :<%=st.getName()%></h2>

					<h4>
						Email :<%=st.getEmail()%></h4>
					<h4>
						City :<%=st.getCity()%></h4>
				</div>

			</div>

		</div>

	</div>





</body>
</html>