package com.org.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.DoctorDao;
import com.org.entity.Doctor;

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {
 
 	@Override
 	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       	try {
            	String fullName = req.getParameter("fullname") ;
            	String dob = req.getParameter("dob") ;
            	String qualification = req.getParameter("qualification") ;
            	String spec = req.getParameter("spec") ;
            	String email = req.getParameter("email") ;
            	String mobno = req.getParameter("mobno") ;
            	String password = req.getParameter("password") ;
            	int id = Integer.parseInt(req.getParameter("id")) ;
            	
            	Doctor d = new Doctor(id ,fullName, dob, qualification, spec, email, mobno, password) ;
            	
            	DoctorDao dao = new DoctorDao() ;
            	HttpSession hs = req.getSession() ;
            	
            	if(dao.updateDoctor(d)) {
                  	hs.setAttribute("succMsg", "Doctor Updated Successfully");
            	 	resp.sendRedirect("admin/view_doctor.jsp");
            	}else {
                  	hs.setAttribute("errorMsg", "Something Went Wrong");
            	 	resp.sendRedirect("admin/view_doctor.jsp");
            	}
            	
       	}catch (Exception e) {
            	e.printStackTrace();
       	}
 	}
}
