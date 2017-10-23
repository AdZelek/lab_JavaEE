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
<jsp:useBean id="shoe" class="com.example.servletjspdemo.domain.Shoe" scope="application" />

<% 
  //Shoe shoe = new Shoe();
 
  shoe.setName("Adidas M23") ;
  shoe.setPrice(199.99);
  shoe.setSize(40);
  storageS.add(shoe);
  
  shoe.setName("Adidas V23") ;
  shoe.setPrice(399.99);
  shoe.setSize(38);
  storageS.add(shoe);

  
   out.println("<form action='addShoe.jsp'>");

    for (Shoe shoeShow : storageS.getAllShoes()) {
	  out.print("<p>Name: " + shoeShow.getName() + "; Size: " + shoeShow.getSize() +"; Price: " +shoeShow.getPrice());
	  out.println("<input type='checkbox' name='name' value='${shoeShow.getName()}' /><br />"+ "</p>");
     }
    out.println("<input type='submit' value='OK'></form>"); %>
  



</body>
</html>