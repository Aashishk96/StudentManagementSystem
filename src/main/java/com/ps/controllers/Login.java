package com.ps.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ps.dao.ConnectDB;
import com.ps.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginserv")
public class Login extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		
		try {
			Connection conn = ConnectDB.getConnection();
			
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM registration WHERE email=? AND password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
		 	ResultSet rs= ps.executeQuery();
		 	if(rs.next()) {
		 		
		 		Student st = new Student();
		 		st.setName(rs.getString("name"));
		 		st.setEmail(rs.getString("email"));
		 		st.setCity(rs.getString("city"));
		 		
		 		HttpSession session =req.getSession();
		 		session.setAttribute("std_session", st);
		 		
		 		
		 		RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
		 		rd.forward(req, resp);
		 	}
		 	else {
//		 		out.println("<h3>Email and password didn't matched </h3>");
		 		
		 		RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
		 		rd.forward(req, resp);
		 	}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
