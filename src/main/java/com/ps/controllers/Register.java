package com.ps.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mysql.cj.MessageBuilder;
import com.ps.dao.ConnectDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class Register extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uname = req.getParameter("uname");
		String uemail = req.getParameter("email");
		String upassword = req.getParameter("pass");
		String ucity = req.getParameter("city");

		try {
			Connection conn = ConnectDB.getConnection();

			PreparedStatement ps = conn.prepareStatement("INSERT INTO registration VALUES(?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, uemail);
			ps.setString(3, upassword);
			ps.setString(4, ucity);

			int count = ps.executeUpdate();
			if (count > 0) {
				System.out.println("Registered succesfully");
				
				
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			} else {
				System.out.println("Registration failed");

				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
