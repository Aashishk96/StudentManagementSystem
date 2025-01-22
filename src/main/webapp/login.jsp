<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<%@ include file="navbar.html"%>
	<div class="d-flex align-items-center justify-content-center">
		<div
			class="d-flex align-items-center justify-content-center border border-bottom rounded m-5">
			<form action="loginserv" method="post" class="m-4 p-5">
				<h4>Login here...</h4>
				<div class="mb-3 mt-4">
					<label for="exampleFormControlInput1" class="form-label">Email
						address</label> <input type="email" class="form-control" name="email" >
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Password</label>
					<input type="password" class="form-control" name="pass" >
				</div>
				<div class="d-flex justify-content-center">
					<input type="submit" value="Login" class="btn btn-primary">
				</div>
				<div class="mt-4 ">
					<span>New user ?</span>
					<a href="register.jsp" class="link-underline-light">Register here </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>