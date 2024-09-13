package com.ground.work.controller;

import java.io.IOException;

import com.DB.DBConnect;
import com.ground.work.model.User;
import com.ground.work.repository.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
			UserDAO dao = new UserDAO(DBConnect.getConnection());
			User user = dao.getLogin(email, password);

			HttpSession session = request.getSession();

			if (user != null) {
				session.setAttribute("user", user);

				String role = user.getRole();

				if (role == null) {
					response.sendRedirect(request.getContextPath() +"/user_pro/user-profile.jsp");
				} else if (role.equals("ADMIN")) {
					response.sendRedirect(request.getContextPath() +"/Admin/index.jsp");
				} else if (role.equals("INVESTOR")) {
					response.sendRedirect(request.getContextPath() +"/investor/investor-profile.jsp");
				} else if (role.equals("STARTUP")) {
					response.sendRedirect(request.getContextPath() +"/startup/startup-profile.jsp");
				} else {
					response.sendRedirect(request.getContextPath() +"error.jsp");
				}
			} else {
				// Login failed
				session.setAttribute("login-error", "Invalid email or password.");
				response.sendRedirect(request.getContextPath() +"/login/login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/login/login.jsp");



		}
	}
}
