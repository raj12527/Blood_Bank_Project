package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BuyerDao;
import com.dto.Buyer;
@WebServlet("/buyersignup")
public class BuyerSignupServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int age=Integer.parseInt(req.getParameter("age"));
		if(age>18) {
			Buyer buyer=new Buyer();
			buyer.setName(req.getParameter("name"));
			buyer.setEmail(req.getParameter("email"));
			buyer.setPassword(req.getParameter("pass"));
			buyer.setGender(req.getParameter("gen"));
			buyer.setPhone(Long.parseLong(req.getParameter("mob")));
			buyer.setBloooGroup(req.getParameter("bg"));
			BuyerDao dao=new BuyerDao();
			dao.Save(buyer);
			resp.getWriter().print("<h1>Signup Sucessfully</h1>");
			req.getRequestDispatcher("buyerLogin.jsp").include(req, resp);
			
		}
		else {
			resp.getWriter().print("<h1>You are under 18</h1>");
			req.getRequestDispatcher("buyerSignup.jsp").include(req, resp);
		}
	}
}
