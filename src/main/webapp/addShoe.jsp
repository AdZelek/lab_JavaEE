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
<jsp:useBean id="shoe" class="com.example.servletjspdemo.domain.Shoe" scope="session" />

<jsp:setProperty name="shoe" property="*" /> 
<jsp:useBean id="storageS" class="com.example.servletjspdemo.service.StorageServiceShoes" scope="application" />

<% 
   Shoe s = new Shoe(); 
  s = storageS.find(shoe.getName()); 
  storageS.addToBasket(s);
  
 /*  for (Shoe shoeShow : storageS.getAllShoesBasket()) {
	 out.print("<p>Name: " + shoeShow.getName() + "; Size: " + shoeShow.getSize() +"; Price: " +shoeShow.getPrice()+"</p>");
} */
%>

</body>
</html>