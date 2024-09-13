package com.ground.work.controller;

import java.io.IOException;
import com.DB.DBConnect;
import com.ground.work.model.Contactus;
import com.ground.work.repository.ContactDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Contact")
public class ContactC extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		Contactus contact=new Contactus();
		contact.setName(name);
		contact.setEmail(email);
		contact.setMessage(message);
		
		ContactDAO dao = new ContactDAO(DBConnect.getConnection());
		boolean f = dao.ContactRegister(contact);

		HttpSession session = request.getSession();

		if (f) {
			session.setAttribute("reg-msg", " Successful!");
			response.sendRedirect(request.getContextPath() +"/login/login.jsp");
		} else {
			session.setAttribute("error-msg", "Something went wrong");
			response.sendRedirect(request.getContextPath() +"/login/login.jsp");
		}
	}
}
