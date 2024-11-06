package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BuyerDao;
import com.dto.Buyer;

@WebServlet("/buyerlogin")
public class BuyerLoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BuyerDao dao=new BuyerDao();
		Buyer buyer= dao.findByEmail(req.getParameter("email"));
		if(buyer!=null && buyer.getPassword().equals(req.getParameter("pass"))) {
			req.getSession().setAttribute("buyer", buyer);
			resp.getWriter().print("<h1>Login Sucessfully</h1>");
			req.getRequestDispatcher("buyerBloodDetails.jsp").include(req, resp);
		}
		else {
			resp.getWriter().print("<h1>Login Failed</h1>");
			req.getRequestDispatcher("buyerLogin.jsp").include(req, resp);
		}
	}
}
