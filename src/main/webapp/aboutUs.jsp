<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>about-us</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<%@ include file="navbar.html"%>

	<div class="row mt-5">

		<div class="col-md-6 ">

			<div id="carouselExampleRide" class="carousel slide ms-5"
				data-bs-ride="true">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="images/Predrag1.jfif" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="images/predrag2.jfif" class="d-block w-75" alt="...">
					</div>
					<div class="carousel-item">
						<img src="images/predrag3.jfif" class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleRide" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleRide" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>

		</div>
		<div class="col-md-6">
			<div class="container d-flex flex-column position-relative"
				style="height: 300px;">
				<!-- First card (left aligned) -->
				<div class="card ms-5 mb-3" style="width: 16rem;">
					<div class="card-body p-5">
						<h1 class="card-title">1000+</h1>
						<p class="card-text">Students trained.</p>
					</div>
				</div>

				<!-- Second card (right aligned) -->
				<div class="card ms-5 mb-3 float-right position-absolute"
					style="width: 16rem; right: 50px;">
					<div class="card-body p-5">
						<h1 class="card-title">10+</h1>
						<p class="card-text">IT Courses.</p>
					</div>
				</div>

				<!-- Third card at the bottom and centered horizontally -->
				<div class="card ms-5 mt-5 mx-5" style="width: 16rem;">
					<div class="card-body p-5">
						<h1 class="card-title">1st</h1>
						<p class="card-text">Rank Since 5 yrs.</p>
					</div>
				</div>
			</div>
		</div>




		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
</body>
</html>