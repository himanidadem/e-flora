package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.user1DAO;
import database.DBConnect;
import user.user1;

@WebServlet("/editadminservlet")
public class editadminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public editadminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("p1");
		String id=request.getParameter("p2");
		String pass1=request.getParameter("p3");
		String pass2=request.getParameter("p4");
		
		
		HttpSession session;
		if(pass1.equals(pass2)==false) {
			 session =request.getSession();
			 
			session.setAttribute("pass-mismatch", "Passwords do not match");
			response.sendRedirect("admin_home.jsp");
			
		}
		else {
			user1 user=new user1();
			user.setId(id);
			user.setPassword(pass1);
			user.setName(name);
			user1DAO d=new user1DAO(DBConnect.getconn());
			boolean us=d.editadmin(user);
			 if(us)
			 {
			     session =request.getSession();
			     System.out.println("added successfully");
				 session.setAttribute("adminedit-success"," Admin Profile Edited Successfully ");
				 response.sendRedirect("admin_home.jsp");
				 
			 }
			else
			{
				session =request.getSession();
				System.out.println(" Not added successfull");
				 session.setAttribute("adminedit-fail","Oops,Something went wrong on server");
				 response.sendRedirect("admin_home.jsp");
			} 
			
		
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
