package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import com.dao.BloodGroupDao;
import com.dto.BloodGroup;
import com.dto.DonerSignup;
@WebServlet("/bloodDetail")
public class BloodDetailsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String bgroup=req.getParameter("bg");
		int quantity=Integer.parseInt(req.getParameter("quantity"));
		double amount=20*quantity;
		DonerSignup donor=(DonerSignup) req.getSession().getAttribute("donor");
		System.out.println(donor);
		donor.setQuantity(quantity);
		donor.setAmount(amount);
		donor.setStatus("IN_ACTIVE");
		BloodGroupDao dao=new BloodGroupDao();
		BloodGroup bloodGroup=dao.findByBloodGroup(bgroup);
		PrintWriter p=resp.getWriter();
		if(bloodGroup!=null) {
			List li=bloodGroup.getDonerSignups();
			li.add(donor);
			donor.setBloodGroup(bloodGroup);
			bloodGroup.setDonerSignups(li);
			dao.updateBloodGroup(bloodGroup);
			p.print("<html><body>");
			p.print("<h2>Thank You For Donating Blood</h1>");
			p.print("<h2>Donor ID:"+donor.getId()+"</h2>");
			p.print("<h2>Donor Name:"+donor.getName()+"</h2>");
			p.print("<h2>Donor Blood Group:"+donor.getBgroup()+"</h2>");
			p.print("<h2>Quantity:"+donor.getQuantity()+"</h2>");
			p.print("</body></html>");
			req.getRequestDispatcher("donorThanku.jsp").include(req, resp);
			
		}
		else {
			//if blood group not present
			BloodGroup b=new BloodGroup();
			b.setBgname(bgroup);
			List dlist=Arrays.asList(donor);
			donor.setBloodGroup(b);
			b.setDonerSignups(dlist);
			
			//update
			dao.updateBloodGroup(b);
			p.print("<html><body>");
			p.print("<h2>Thank You For Donating Blood</h1>");
			p.print("<h2>Donor ID:"+donor.getId()+"</h2>");
			p.print("<h2>Donor Name:"+donor.getName()+"</h2>");
			p.print("<h2>Donor Blood Group:"+donor.getBgroup()+"</h2>");
			p.print("<h2>Quantity:"+donor.getQuantity()+"</h2>");
			p.print("</body></html>");
			req.getRequestDispatcher("donorThanku.jsp").include(req, resp);
			
		}
		
		
	}
}
