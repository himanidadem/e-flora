<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "testing" method = "post" enctype="multipart/form-data">
         
         <input type = "file" name = "file1" size = "50" multiple/>
         <br />
         <input type = "text" name = "t1" value="Heloo"/>
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
</body>
</html>