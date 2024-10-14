<%@page import="com.org.dao.AppointmentDao"%>
<%@page import="com.org.entity.User"%>
<%@page import="com.org.entity.Doctor"%>
<%@page import="com.org.dao.DoctorDao"%>
<%@page import="com.org.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointments</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background:
		url("img/banner3.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.img2{
	height: 40vh;
	width: 10vh;
	background-size: cover;
}
</style>
</head>
<body>
	<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<%@include file="component/navbar.jsp"%>

	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-9 m-auto">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
									User user = (User) session.getAttribute("userObj");
									AppointmentDao dao = new AppointmentDao();
									DoctorDao dao2 = new DoctorDao();
									List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId()) ;
									for (Appointment ap : list) {
										Doctor d = dao2.getDoctorsById(ap.getDoctorId()) ;
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
										<%
											if ("Pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> <%
 											} else {
 										%> <%=ap.getStatus()%> <%
 											}
 										%>
									</td>
								</tr>
								<%
									}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
<%@include file="component/footer.jsp"%>
</body>
</html>
