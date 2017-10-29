 <%@page import="com.example.servletjspdemo.domain.Shoe"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageServiceShoes" scope="application" />
<jsp:useBean id="shoe" class="com.example.servletjspdemo.domain.Shoe" scope="session" />


<% 
	
  if(session.isNew())
 storage.generateTestData(); 

  
    for (Shoe shoeShow : storage.getAllShoes()) {
      out.println("<form action='addShoe.jsp'>");
      out.print("<p>Name: " + shoeShow.getName() + "; Size: " + shoeShow.getSize() +"; Price: " +shoeShow.getPrice());
	  out.println("<input type=\"hidden\" name=\"name\" value=\""+shoeShow.getName()+"\">\n");
	  out.println("<input type=\"hidden\" name=\"size\" value=\""+shoeShow.getSize()+"\">\n");
	  out.println("<input type=\"hidden\" name=\"price\" value=\""+shoeShow.getPrice()+"\">\n");
	  out.println("<input type='submit' value='Add'></form>");
     }
     %>
  



</body>
</html>