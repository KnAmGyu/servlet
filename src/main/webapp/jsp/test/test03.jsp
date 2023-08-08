<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
	//	String date = request.getParameter("date");	
	//	Date dateString = new Date();
	//	String now = null;
	//	if(date.equals("time")){
	//		SimpleDateFormat timeformatter = new SimpleDateFormat("현재 시간HH시 mm분 ss초");
	//		now = timeformatter.format(date);
	//	}else{
	//		SimpleDateFormat dateformatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");	
	//		now = dateformatter.format(date);
	//	}
	
		Date now = new Date();
		SimpleDateFormat dateformatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");	
		SimpleDateFormat timeformatter = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
		
		String dateString = dateformatter.format(now);
		String timeString = timeformatter.format(now);
		
		// 시간과 날짜 중 어떤것을 선택할지 정보
		// "date" "time"
		String what = request.getParameter("what");	
		
		String result = null;
		if(what.equals("time")){
			result = timeString;	
		}else{
			result = dateString;	
		}
		
		
	%>
	<div class="container">
		<div class="display-4"><%= result %></div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
</body>
</html>