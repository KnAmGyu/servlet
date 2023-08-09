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
		request.setCharacterEncoding("utf-8");
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal");
		
		String friut = request.getParameter("fruit");
		
		//String food = request.getParameter("food");
		
		String[] foods = request.getParameterValues("food");
		
		String foodString = "";
		for(int i = 0; i < foods.length; i++){
			//foodString = foodString + foods[i] + " ";
			foodString += foods[i] + " ";
		}
		
	%>
	<h4><%= nickname %></h4>
	<h4><%= animal %></h4>
	<%-- <h4><%= fruit %></h4> --%>
	<h4><%= foodString %></h4>
</body>
</html>