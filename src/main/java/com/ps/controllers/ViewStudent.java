package com.ps.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ps.dao.ConnectDB;
import com.ps.model.Std_Data;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/viewStudent")
public class ViewStudent extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Std_Data> stl = new ArrayList<Std_Data>();
		
		try {
			Connection conn = ConnectDB.getConnection();
			
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM std_data");
			
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				Std_Data stdd = new Std_Data();
				stdd.setId(rs.getInt("id"));
				stdd.setName(rs.getString("name"));
				stdd.setCourse(rs.getString("course"));
				stdd.setFees(rs.getInt("fees"));
				
				stl.add(stdd);
			}
			
			HttpSession session =req.getSession();
	 		session.setAttribute("std_list", stl );
	 		
	 		RequestDispatcher rd = req.getRequestDispatcher("/viewStudent.jsp");
	 		rd.forward(req, resp);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
