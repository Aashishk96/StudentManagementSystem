<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registeration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<%@ include file="navbar.html"%>

	<!-- Container for centering the form -->
	<div class="d-flex align-items-center justify-content-center min-vh-75">
		<!-- Form wrapper with border and padding -->
		<div class="d-flex align-items-center justify-content-center mt-5 border border-bottom rounded w-25">
		
			<form action="signup" method="post" class="m-5">
				<h4>SignUp here</h4>
				<div class="mb-3 mt-5">
					<label for="exampleFormControlInput1" class="form-label">Name</label>
					<input type="text" class="form-control" name="uname" required>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Email address</label>
					<input type="email" class="form-control" name="email" required>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Password</label>
					<input type="password" class="form-control" name="pass" required>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">City</label>
					<input type="text" class="form-control" name="city">
				</div>

				<div class="d-flex justify-content-center">
					<input type="submit" class="btn btn-success" value="Register" />
				</div>
				<div class="d-flex justify-content-center mt-4">
					<span>Already Registered...</span>
					<a href="login.jsp" class="ms-2 link-underline-light">Login here</a>
				</div>
				
			</form>
		</div>
	</div>

</body>
</html>
