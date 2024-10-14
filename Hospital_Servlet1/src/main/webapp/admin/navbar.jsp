<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<nav class="navbar navbar-expand-lg bg-light text-dark">
 	<div class="container-fluid">
       	<div class="logo ">
			<a href="index.jsp"><img src="../assets/img/logo/logo.png" alt=""></a>
		</div>
       	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            	data-bs-target="#navbarSupportedContent"
            	aria-controls="navbarSupportedContent" aria-expanded="false"
            	aria-label="Toggle navigation">
            	<span class="navbar-toggler-icon"></span>
       	</button>
       	<div class="collapse navbar-collapse m-auto" id="navbarSupportedContent">
            	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
 
                  	<li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">HOME</a></li>
                  	<li class="nav-item"><a class="nav-link active" aria-current="page" href="doctor.jsp">DOCTOR</a></li>
                  	<li class="nav-item"><a class="nav-link active" aria-current="page" href="view_doctor.jsp">VIEW DOCTOR</a></li>
                  	<li class="nav-item"><a class="nav-link active" aria-current="page" href="patient.jsp">PATIENT</a></li>
 
 
            	</ul>
 
            	<form class="d-flex">
                  	<div class="dropdown">
                       	<button class="btn btn-success dropdown-toggle" type="button"
                             	id="dropdownMenuButton1" data-bs-toggle="dropdown"
                             	aria-expanded="false">Admin</button>
                       	<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                             	<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
                       	</ul>
                  	</div>
            	</form>
       	</div>
 	</div>
</nav> 