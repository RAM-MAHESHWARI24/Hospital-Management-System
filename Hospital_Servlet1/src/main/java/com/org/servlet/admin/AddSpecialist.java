package com.org.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.SpecialistDao;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{
 
 	@Override
 	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       	String specName = req.getParameter("specName") ;
       	
       	SpecialistDao dao = new SpecialistDao() ;
       	boolean f = dao.addSpecialist(specName) ;
       	
       	HttpSession hs = req.getSession() ;
       	
       	if(f) {
            	hs.setAttribute("succMsg", "Specialist Added");
            	resp.sendRedirect("admin/index.jsp");
       	}else {
            	hs.setAttribute("errorMsg", "something went wrong");
            	resp.sendRedirect("admin/index.jsp");
       	}
 	}
}
 
