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
<jsp:useBean id="storageS" class="com.example.servletjspdemo.service.StorageServiceShoes" scope="application" />
<%-- <jsp:useBean id="shoe" class="com.example.servletjspdemo.domain.Shoe" scope="session" /> --%>


<% 
  if(session.isNew()==true)
 storageS.generateTestData(); 
  
   out.println("<form action='addShoe.jsp'>");
// zrobic funkcje find znajdowanie produktu przez nazwe albo value rozbudowane 
    for (Shoe shoeShow : storageS.getAllShoes()) {
	  out.print("<p>Name: " + shoeShow.getName() + "; Size: " + shoeShow.getSize() +"; Price: " +shoeShow.getPrice());
	   //out.print(storageS.find("Adidas M23").getPrice()); 
	  out.println("<input type='checkbox' name='"+shoeShow.getName()+"'/><br />");
	 
     }
    out.println("<input type='submit' value='OK'></form>"); %>
  



</body>
</html>