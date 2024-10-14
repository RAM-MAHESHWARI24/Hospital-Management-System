<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Medical Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/gijgo.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/animated-headline.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<!--  <!-- ? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<%@ include file="component/navbar2.jsp"%>
	<!-- main part -->
	<main>
		<!--? slider Area Start-->
		<div class="slider-area position-relative">
			<div class="slider-active">
				<!-- Single Slider -->
				<div class="single-slider slider-height d-flex align-items-center">
					<div class="container">
						<div class="row">
							<div class="col-xl-7 col-lg-9 col-md-8 col-sm-9">
								<div class="hero__caption">
									<span>Committed to success</span>
									<h1 class="cd-headline letters scale">
										We care about your <strong class="cd-words-wrapper">
											<b class="is-visible">health</b> <b>sushi</b> <b>steak</b>
										</strong>
									</h1>
									<p data-animation="fadeInLeft" data-delay="0.1s">Ut enim ad
										minim veniam, quis nostrud exercitation ullamco laboris nisi
										uquip ex ea commodo consequat is aute irure.</p>
									<a href="user_appointment.jsp" class="btn hero-btn" data-animation="fadeInLeft"
										data-delay="0.5s">Appointment <i class="ti-arrow-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- slider Area End-->
		<!--? department_area_start  -->
		<div class="department_area section-padding2">
			<div class="container">
				<!-- Section Tittle -->
				<div class="row">
					<div class="col-lg-12">
						<div class="section-tittle text-center mb-100">
							<span>Our Departments</span>
							<h2>Our Medical Services</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="depart_ment_tab mb-30">
							<!-- Tabs Buttons -->
							<ul class="nav" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="home-tab" data-toggle="tab" href="#home" role="tab"
									aria-controls="home" aria-selected="true"> <i
										class="flaticon-teeth"></i>
										<h4>Dentistry</h4>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="profile-tab"
									data-toggle="tab" href="#profile" role="tab"
									aria-controls="profile" aria-selected="false"> <i
										class="flaticon-cardiovascular"></i>
										<h4>Cardiology</h4>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="contact-tab"
									data-toggle="tab" href="#contact" role="tab"
									aria-controls="contact" aria-selected="false"> <i
										class="flaticon-ear"></i>
										<h4>ENT Specialists</h4>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="Astrology-tab"
									data-toggle="tab" href="#Astrology" role="tab"
									aria-controls="contact" aria-selected="false"> <i
										class="flaticon-bone"></i>
										<h4>Astrology</h4>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									id="Neuroanatomy-tab" data-toggle="tab" href="#Neuroanatomy"
									role="tab" aria-controls="contact" aria-selected="false"> <i
										class="flaticon-lung"></i>
										<h4>Neuroanatomy</h4>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="Blood-tab"
									data-toggle="tab" href="#Blood" role="tab"
									aria-controls="contact" aria-selected="false"> <i
										class="flaticon-cell"></i>
										<h4>Blood Screening</h4>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="dept_main_info white-bg">
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<!-- single_content  -->
							<div class="row align-items-center no-gutters">
								<div class="col-lg-7">
									<div class="dept_info">
										<h3>
											Dentist with surgical mask holding <br> scaler near
											patient
										</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus
											commodo viverra maecenas accumsan lacus vel facilisis.</p>
										<a href="#" class="dep-btn">Appointment<i
											class="ti-arrow-right"></i></a>
									</div>
								</div>
								<div class="col-lg-5">
									<div class="dept_thumb">
										<img src="assets/img/gallery/department_man.png" alt="">
									</div>
								</div>
							</div>
							<!-- single_content  -->
						</div>

					</div>
				</div>

			</div>
		</div>
		<!-- depertment area end  -->

		<!--? Team Start -->
		<div class="team-area section-padding30">
			<div class="container">
				<!-- Section Tittle -->
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-tittle text-center mb-100">
							<span>Our Doctors</span>
							<h2>Our Specialist</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single Tem -->
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="assets/img/gallery/team2.png" alt="">
							</div>
							<div class="team-caption">
								<h3>
									<a href="#">Alvin Maxwell</a>
								</h3>
								<span>Creative UI Designer</span>
								<!-- Team social -->
								<div class="team-social">
									<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
										class="fas fa-globe"></i></a> <a href="#"><i
										class="fab fa-facebook-f"></i></a> <a href="#"><i
										class="fab fa-pinterest-p"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="assets/img/gallery/team3.png" alt="">
							</div>
							<div class="team-caption">
								<h3>
									<a href="#">Maria Smith</a>
								</h3>
								<span>Agency Manager</span>
								<!-- Team social -->
								<div class="team-social">
									<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
										class="fas fa-globe"></i></a> <a href="#"><i
										class="fab fa-facebook-f"></i></a> <a href="#"><i
										class="fab fa-pinterest-p"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="assets/img/gallery/team1.png" alt="">
							</div>
							<div class="team-caption">
								<h3>
									<a href="#">Angela Doe</a>
								</h3>
								<span>Designer</span>
								<!-- Team social -->
								<div class="team-social">
									<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
										class="fas fa-globe"></i></a> <a href="#"><i
										class="fab fa-facebook-f"></i></a> <a href="#"><i
										class="fab fa-pinterest-p"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Team End -->
	</main>
	<footer>
		<!--? Footer Start-->
		<div class="footer-area section-bg"
			data-background="assets/img/gallery/footer_bg.jpg">
			<div class="container">
				<div class="footer-bottom">

					<div class="row d-flex justify-content-between align-items-center">
						<div class="col-xl-9 col-lg-8">
							<p class="text-center text-md-end text-xl-start">All Rights
								Reserved</p>
						</div>
						<div class="col-xl-3 col-lg-4">
							<!-- Footer Social -->
							<div class="footer-social f-right">
								<a href="#"><i class="fab fa-twitter"></i></a> <a
									href="https://www.facebook.com/sai4ull"><i
									class="fab fa-facebook-f"></i></a> <a href="#"><i
									class="fas fa-globe"></i></a> <a href="#"><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End-->
	</footer>
	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>
</body>
</html>