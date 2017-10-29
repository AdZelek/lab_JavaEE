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

<%-- <jsp:setProperty name="shoe" property="*" /> --%> 
<jsp:useBean id="storageS" class="com.example.servletjspdemo.service.StorageServiceShoes" scope="application" />

<jsp:declaration>
java.util.Enumeration parms;
java.util.Enumeration values;
</jsp:declaration>

<jsp:scriptlet>
/* //shoe = 
out.println(shoe.getName());  */
parms = request.getParameterNames();
values = request.getParameterNames();

while(parms.hasMoreElements()) {
	String name = (String) parms.nextElement();
	String value = (String) values.nextElement();
	out.println("name " + name);
	out.println("value "+value);
    session.setAttribute(name, value); 
}

</jsp:scriptlet> 


<jsp:scriptlet><![CDATA[ 
java.util.Enumeration content = session.getAttributeNames();
content.nextElement();
while (content.hasMoreElements()) {
    out.println(content.nextElement());
    out.println("<br>");
}

 ]]></jsp:scriptlet>


</body>
</html>