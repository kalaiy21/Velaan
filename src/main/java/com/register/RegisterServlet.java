package com.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.register.controller.RegisterController;
import com.register.dao.RegisterDao;

@WebServlet("/SignUp")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private RegisterDao registerDao = new RegisterDao();

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    response.getWriter().append("Served at:").append(request.getContextPath());

		RequestDispatcher dispatch = request.getRequestDispatcher("webapp/register.jsp");
		dispatch.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("mail");
		String password = request.getParameter("password");
		String location = request.getParameter("location");
		String type = request.getParameter("type");

		RegisterController employee = new RegisterController();

		employee.setName(name);
		employee.setNumber(number);
		employee.setMail(email);
		employee.setPassword(password);
		employee.setLocation(location);
		employee.setType(type);

		try {
			registerDao.registerEmployee(employee);
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");

		dispatcher.forward(request, response);

	}

}
