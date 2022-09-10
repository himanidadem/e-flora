package servlet;

import java.io.*;

import java.sql.*;
import java.util.Iterator;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.*;
import DAO.*;
import database.*;
import user.*;

@WebServlet("/editservlet")
public class editservlet extends HttpServlet {
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
       
    public editservlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pid=0;
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
		String orglink1=null;
		String orglink2=null;
		String orglink3=null;
		String orglink4=null;
		String orglink5=null;
		String orglink6=null;
		String url=null;
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
	               try {
	            	   fi.write( file );
	            	   url="Uploaded flora/"+fileName;
	            	   
	            	   switch(fieldName) {
	            	   case "link1":link1=url; break;	
	            	   case "link2":link2=url; break;	
	            	   case "link3":link3=url; break;	
	            	   case "link4":link4=url; break;	
	            	   case "link5":link5=url; break;	
	            	   case "link6":link6=url; break;	
	            	   default: System.out.println("not entering file field"); break;	
	            	   }
	            	   	            	   
	            	   
	               }
	               catch(FileNotFoundException e){
	            	   System.out.println("entered exception");
	            	   continue;
	               }
	               
	               
					
	            }
	            else {
					String name=fi.getFieldName();
					String value=fi.getString("UTF-8");
					
					
					switch(name) {
					case "pid":pid=Integer.parseInt(value); break;
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
					case "orglink1":orglink1=value; break;	
					case "orglink2":orglink2=value; break;	
					case "orglink3":orglink3=value; break;	
					case "orglink4":orglink4=value; break;	
					case "orglink5":orglink5=value; break;	
					case "orglink6":orglink6=value; break;	
					default: System.out.println("not entering form field"); break;	
					
					}
					

					
	            }	            
	         }
	         
	         } catch(Exception ex) {
	            System.out.println(ex);
	         }
		System.out.println("original linksare "+orglink1+" "+orglink2+" "+orglink3+" "+orglink4+" "+orglink5+" "+orglink6);
	      System.out.println(link6);
		
		trees user=new trees();
		user.setPid(pid);
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
		if(link1!=null)
		{
			user.setLink1(link1);			
		}
		else {
			user.setLink1(orglink1);
		}
		
		if(link2!=null)
		{
			user.setLink2(link2);			
		}
		else {
			user.setLink2(orglink2);
		}
		
		if(link3!=null)
		{
			user.setLink3(link3);			
		}
		else {
			user.setLink3(orglink3);
		}
		
		if(link4!=null)
		{
			user.setLink4(link4);			
		}
		else {
			user.setLink4(orglink4);
		}
		
		if(link5!=null)
		{
			user.setLink5(link5);			
		}
		else {
			user.setLink5(orglink5);
		}
		
		if(link6!=null)
		{
			user.setLink6(link6);			
		}
		else {
			user.setLink6(orglink6);
		}
		
		
		
		
		
		
		
		treesDAO d=new treesDAO(DBConnect.getconn());
		 boolean f=d.editrecord(user);
		 HttpSession session;
		 if (f)
		 {
			 System.out.println("data updated successfully");
			 session=request.getSession();
			 session.setAttribute("edit-success",sname+" Updated Successfully!");
			 response.sendRedirect("admin_home.jsp");
			 
		 }
		 else
		 {
			 session =request.getSession();
			 System.out.println("data  not updated successfully");
			 session.setAttribute("edit-fail","Oops,Something went wrong on server");
				 response.sendRedirect("admin_home.jsp");
		 }
			 		 
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



