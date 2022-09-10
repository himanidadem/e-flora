package servlet;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.Iterator;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.*;
import DAO.*;
import database.*;
import user.*;

/**
 * Servlet implementation class userselvet
 */
@WebServlet("/addservlet")
public class addservlet extends HttpServlet {
	private boolean isMultipart;
	   private String filePath;
	   private int maxFileSize = 10000 * 1024;
	   private int maxMemSize = 10000 * 1024;
	   private File file ;
	   
	   
	   public void init( ){
		      // Get the file location where it would be stored.
				
				  filePath = getServletContext().getInitParameter("file-upload");
				 	     
		   


		   }
	   
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String sname = null;
		String family = null;
		String cname = null;
		String vname = null;
		String hname = null;
		String tname= null;
		String part= null;
		String uses= null;
		String period= null;
		String rtype= null;
		String habitat= null;
		String cat= null;
		String ccat= null;
		String key= null;
		String location= null;
		String link1= null;
		String link2= null;
		String link3= null;
		String link4= null;
		String link5= null;
		String link6= null;
		String path[]=new String[50];
		
		
		
		// Check that we have a file upload request
	      isMultipart = ServletFileUpload.isMultipartContent(request);
	      response.setContentType("text/html");
	      java.io.PrintWriter out = response.getWriter( );
	   
	      if( !isMultipart ) {
	         
	         return;
	      }
	  
	      DiskFileItemFactory factory = new DiskFileItemFactory();
	   
	      // maximum size that will be stored in memory
	      factory.setSizeThreshold(maxMemSize);
	   
	      // Location to save data that is larger than maxMemSize.
	      factory.setRepository(new File("c:\\temp"));

	      // Create a new file upload handler
	      ServletFileUpload upload = new ServletFileUpload(factory);
	   
	      // maximum file size to be uploaded.
	      upload.setSizeMax( maxFileSize );

	      try { 
	         // Parse the request to get file items.
	         List fileItems = upload.parseRequest(request);
		
	         // Process the uploaded file items
	         Iterator i = fileItems.iterator();

	         int j=0;
	  
	         while ( i.hasNext () ) {
	        	 
	            FileItem fi = (FileItem)i.next();
	            
	           
	            
	            if ( !fi.isFormField () ) {
	               // Get the uploaded file parameters
	               String fieldName = fi.getFieldName();
	               String fileName = fi.getName();
	               String contentType = fi.getContentType();
	               boolean isInMemory = fi.isInMemory();
	               long sizeInBytes = fi.getSize();
	            
	               // Write the file
	               if( fileName.lastIndexOf("\\") >= 0 ) {
	                  file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
	               } else {
	                  file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
	               }
	               fi.write( file ) ;
	               path[j]="Uploaded flora/"+fileName;
	               j++;
					
	            }
	            else {
					String name=fi.getFieldName();
					String value=fi.getString("UTF-8");
					
					
					switch(name) {
					case "sname":sname=value; break;				
					case "family":family=value; break;	
					case "cname":cname=value; break;	
					case "vname":vname=value; break;	
					case "hname":hname=value; break;	
					case "tname":tname=value; break;	
					case "part":part=value; break;	
					case "uses":uses=value; break;	
					case "period":period=value; break;	
					case "rtype":rtype=value; break;	
					case "habitat":habitat=value; break;	
					case "cat":cat=value; break;	
					case "ccat":ccat=value; break;	
					case "key":key=value; break;	
					case "location":location=value; break;	
					default: System.out.println("not entering"); break;	
					
					}
					

					
	            }	            
	         }
	         
	         } catch(Exception ex) {
	            System.out.println(ex);
	         }
		System.out.println(path[0]+"\n"+path[1]+"\n"+path[2]);
		
		trees user=new trees();
		user.setSname(sname);
		user.setFamily(family);
		user.setCname(cname);
		user.setVname(vname);
		user.setHname(hname);
		user.setTname(tname);
		user.setPart(part);
		user.setUses(uses);
		user.setPeriod(period);
		user.setRtype(rtype);
		user.setHabitat(habitat);
		user.setCat(cat);
		user.setCcat(ccat);
		user.setKey(key);
		user.setLocation(location);
		user.setLink1(path[0]);
		user.setLink2(path[1]);
		user.setLink3(path[2]);
		user.setLink4(path[3]);
		user.setLink5(path[4]);
		user.setLink6(path[5]);
		
		
		
		treesDAO d=new treesDAO(DBConnect.getconn());
		 boolean f=d.add(user);
		 HttpSession session;
		 if(f)
		 {
		     session =request.getSession();
		     System.out.println("added successfully");
			 session.setAttribute("add-success",sname+" Added Successfully ");
			 response.sendRedirect("admin_home.jsp");
			 
		 }
		else
		{
			session =request.getSession();
			System.out.println(" Not added successfull");
			 session.setAttribute("add-fail","Oops,Something went wrong on server");
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



