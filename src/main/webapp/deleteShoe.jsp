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

<%

Shoe s = new Shoe(request.getParameter("name"), Integer.parseInt(request.getParameter("size")),
		  Double.parseDouble(request.getParameter("price")));

out.print(storage.getAllShoesBasket().size()); 
storage.deleteToBasket(shoe);
out.print(storage.getAllShoesBasket().size()); 
//deleteToBasket(s); 

out.print("delete "+request.getParameter("name")); 
session.removeValue(request.getParameter("name"));

%>
<p><a href='/servletjspdemo/getShoeData.jsp'>Back to add product</a></p>


</body>
</html>