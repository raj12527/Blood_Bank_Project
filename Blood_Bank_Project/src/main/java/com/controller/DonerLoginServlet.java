package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DonersignupDao;
import com.dto.*;
@WebServlet("/Donerlogin")
public class DonerLoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("pass");
		DonersignupDao dao= new DonersignupDao();
		DonerSignup donor=dao.findDonorByEmail(email);
		if(donor!=null && donor.getEmail().equals(email)&& donor.getPassword().equals(password)) {
			HttpSession hs=req.getSession();
			hs.setAttribute("donor", donor);
			resp.getWriter().print("<h1>Login Sucessfull</h1>");
			resp.getWriter().print("<h1>Your Id:"+email+" and your name is"+donor.getName());
			req.getRequestDispatcher("bloodDetails.jsp").include(req, resp);
		}
		else{
			resp.getWriter().print("<h1>Login Unsucessfull</h1>");
			req.getRequestDispatcher("donerlogin.jsp").include(req, resp);;
		}
		
		
	}

}
