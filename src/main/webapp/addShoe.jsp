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
<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageServiceShoes" scope="application" />
<jsp:useBean id="storageBasket" class="com.example.servletjspdemo.service.StorageServiceBasket" scope="session" />


<% 
if(session.getAttribute(request.getParameter("name"))==null){
Shoe s = new Shoe(request.getParameter("name"), Integer.parseInt(request.getParameter("size")),
				  Double.parseDouble(request.getParameter("price")));
storageBasket.addToBasket(s); 
out.print("Added to cart: " + shoe.getName()); 
session.setAttribute( request.getParameter("name"),request.getParameter("name"));}
else out.print("added earlier \n"); 

     %>
<p><a href='/servletjspdemo/index.jsp'> Back</a></p>
<p><a href='/servletjspdemo/showBasket.jsp'> Cart</a></p>




</body>
</html>