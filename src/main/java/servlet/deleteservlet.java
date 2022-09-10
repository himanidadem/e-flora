package servlet;

import java.io.*;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;
import DAO.*;
import database.*;
import user.*;


@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public deleteservlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int pid=Integer.parseInt(request.getParameter("pid"));
		treesDAO d=new treesDAO(DBConnect.getconn());
		trees post = d.getdatabyid(pid);
		 boolean f=d.deleterecord(pid);
		 
		 
		 HttpSession session;
		 if (f)
		 {
			 System.out.println("record deleted successfully");
			  session=request.getSession();
			 session.setAttribute("delete-success",post.getSname()+" Deleted successfully!!!");
			 response.sendRedirect("admin_home.jsp");
			 
		 }
		 else
		 {
			 System.out.println("record  not deleted successfully");
			 session=request.getSession();
			 session.setAttribute("delete-fail","Oops,Something went wrong on server");
			 response.sendRedirect("admin_home.jsp");
		 }
			 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



