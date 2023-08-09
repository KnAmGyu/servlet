<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		int centimeter = Integer.parseInt(request.getParameter("centimeter"));
		
		String[] conversions = request.getParameterValues("conversion");
		
		//String conversionString = "";
		String conversionNumber = "";
		for(int i = 0; i < conversions.length; i++){
			//conversionString += conversions[i] + " ";
			if(conversions[i].equals("inch")){
				conversionNumber += (centimeter * 0.393701 + "in <br/>");
			}
			if(conversions[i].equals("yard")){
				conversionNumber += (centimeter * 0.0109361 + "yd <br/>");
			}
			if(conversions[i].equals("feet")){
				conversionNumber += (centimeter * 0.0328084 + "ft <br/>");
			}
			if(conversions[i].equals("meter")){
				conversionNumber += (centimeter * 0.01 + "m ");
			}
		}
	
	%>
	<div class="container">
		<h1>변환결과</h1>
		<h2><%= centimeter %>cm</h2>
		<hr>
		<h2><%= conversionNumber %></h2>
	</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>