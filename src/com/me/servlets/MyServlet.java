package com.me.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		response.setContentType("/text/html");
		response.setCharacterEncoding("UTF-8" );
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setAttribute("heure", "jour");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
