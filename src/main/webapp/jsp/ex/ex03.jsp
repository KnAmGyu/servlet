<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>
	
	<%
		
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal");
		
		String friut = request.getParameter("fruit");
		
		//String food = request.getParameter("food");
		
		String[] food = request.getParameterValues("food");
		
	%>
	<h4><%= nickname %></h4>
	<h4><%= animal %></h4>
	<%-- <h4><%= fruit %></h4> --%>
	<%-- <h4><%=  %></h4>--%>
</body>
</html>