package com.ground.work.controller;

import java.io.IOException;
import com.DB.DBConnect;
import com.ground.work.model.Event;
import com.ground.work.repository.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/events")
public class EventsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String venue = request.getParameter("venue");
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String description = request.getParameter("description");
		
		Event et = new Event();
		et.setVenue(venue);
		et.setName(name);
		et.setDate(date);
		et.setDescription(description);
		

		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.eventRegister(et);

		HttpSession session = request.getSession();

		if (f) {
			session.setAttribute("reg-msg", " Successful!");
			response.sendRedirect(request.getContextPath() +"Admin/eventForm.jsp");
		} else {
			session.setAttribute("error-msg", "Something went wrong");
			response.sendRedirect(request.getContextPath() +"Admin/eventForm.jsp");
		}
	}
}