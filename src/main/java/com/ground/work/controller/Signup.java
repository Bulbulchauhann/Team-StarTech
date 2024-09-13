package com.ground.work.controller;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import com.DB.DBConnect;
import com.ground.work.model.User;
import com.ground.work.repository.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
//		String gender = request.getParameter("gender");
		String role = request.getParameter("role");
//		String about = request.getParameter("about");

		String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
		
		User us = new User();
		us.setUsername(username);
		us.setEmail(email);
		us.setPassword(hashedPassword);
		us.setRole(role);

		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(us);

		HttpSession session = request.getSession();

		if (f) {
			session.setAttribute("reg-msg", "Registration Successful!");
			response.sendRedirect(request.getContextPath() +"/register/Register.jsp");
		} else {
			session.setAttribute("error-msg", "Something went wrong");
			response.sendRedirect(request.getContextPath() +"/register/Register.jsp");
		}
	}
}
