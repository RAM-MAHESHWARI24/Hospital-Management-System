<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!-- CSS here -->
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../assets/css/slicknav.css">
	<link rel="stylesheet" href="../assets/css/magnific-popup.css">
	<link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../assets/css/themify-icons.css">
	<link rel="stylesheet" href="../assets/css/slick.css">
	<link rel="stylesheet" href="../assets/css/nice-select.css">
	<link rel="stylesheet" href="../assets/css/style.css">
<style>
header{
height: 10%;
}
</style>
<header>
	<!--? Header Start -->
	<div class="header-area">
		<div class="main-header header-sticky">
			<div class="container-fluid">
				<div class="row align-items-center">
					<!-- Logo -->
					<div class="col-xl-2 col-lg-2 col-md-1">
						<div class="logo">
							<a href="index1.jsp"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-xl-10 col-lg-10 col-md-10">
						<div
							class="menu-main d-flex align-items-center justify-content-end">

							<!-- Main-menu -->
							<c:if test="${empty userObj }">
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="index1.jsp">Home</a></li>
											<li><a href="about.jsp">About</a></li>
											<li><a href="admin_login.jsp">Admin</a></li>
											<li><a href="doctor_login.jsp">Doctor</a></li>
											<li><a href="user_login.jsp">User</a></li>
										</ul>
									</nav>
								</div>

								<div class="header-right-btn f-right d-none d-lg-block ml-30">
									<a href="user_appointment.jsp" class="btn header-btn">Appointment</a>
								</div>
							</c:if> 
							<c:if test="${not empty userObj }">
							
								<div class="main-menu f-right d-none d-lg-block">

									<nav>

										<ul id="navigation">
										<li>
										<button type="button" class="btn-outline-info btn-rounded p-1">${userObj.fullname }</button>
										</li>
											<li><a href="view_appointment.jsp">view Appointment</a></li>
											<li><a href="change_password.jsp">change password</a></li>
											<li><a href="userLogout" class="">Logout</a></li>

										</ul>
									</nav>
								</div>
								<div class="header-right-btn f-right d-none d-lg-block ml-30">
									<a href="user_appointment.jsp" class="btn header-btn">Appointment</a>
								</div>
							</c:if>
						</div>
					</div>

					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
