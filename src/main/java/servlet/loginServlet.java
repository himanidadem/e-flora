package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.*;
import database.DBConnect;
import user.*;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String email=request.getParameter("t1");
		String password=request.getParameter("t2");
		user1 user=new user1();
		user.setId(email);
		user.setPassword(password);
		user1DAO d=new user1DAO(DBConnect.getconn());
		user1 us=d.loginuser(user);
		
		System.out.println(DBConnect.getconn());
		if(us!=null)
		{   
			System.out.println("login successfull");
			HttpSession session =request.getSession();
			session.setAttribute("userd", us);
			session.setAttribute("login-pass", "Successful Login");
			response.sendRedirect("admin_home.jsp");
		}
		else
		{   
			System.out.println("login unsuccessfull");
			HttpSession session =request.getSession();
			session.setAttribute("login-fail", "Invalid Username & Password");
			response.sendRedirect("login.jsp");
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



