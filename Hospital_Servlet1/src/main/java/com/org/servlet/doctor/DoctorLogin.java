package com.org.servlet.doctor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.DoctorDao;
import com.org.entity.Doctor;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email") ;
		String password = req.getParameter("password");
		
		HttpSession hs = req.getSession() ;
		
		DoctorDao dao = new DoctorDao() ;
		Doctor d = dao.login(email, password);
		
		if(d!=null) {
			hs.setAttribute("doctObj", d);
			resp.sendRedirect("doctor/index.jsp");
		}else {
			hs.setAttribute("errorMsg", "invalid email or password");
			resp.sendRedirect("doctor_login.jsp");
		}
	}
}
