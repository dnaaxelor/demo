<%@page import="com.rest.jsp.Dao.DisplayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
</head>
<body>
<%
DisplayDao dd = new DisplayDao();
String id = request.getParameter("id");
String name = request.getParameter("name");
String company = request.getParameter("company");

if(dd.update(id, name, company)){
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("location", "http://localhost:8080/resteasy-jsp/index.jsp");

}


	
%>
</body>
</html>