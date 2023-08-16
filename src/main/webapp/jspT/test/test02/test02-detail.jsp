<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div id="wrap">
	
	<%@ include file="musicData.jsp" %>
	<%
	    String idString = request.getParameter("id");
	    String title = request.getParameter("title");	
	    
	    
	    Map<String, Object> target = null;
	    for(Map<String, Object> list:musicList){
	    	//대상이 되는 노래정보 객체를 얻어 낸다.	
		    if(idString != null){
		    	// id가 전달이되면 , id 일치하는 정보
			    int id = Integer.parseInt(idString);
			    int musicId = (Integer)list.get("id");
			    
		    	if(id == musicId){
		    		target = list;
		    	}
		    	
	    	}else if(title != null){// title이 전달이되면 , title 일치하는 정보
	    		if(title.equals(list.get("title"))){
	    			target = list;
	    		}
	    	}
		    }
		    
		    //
	    int time = (Integer)target.get("time");
	    int minute = time / 60;
		int second = time % 60;
	    
	%>
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section class="contents">
			<h1 class="mt-4">곡정보</h1>
			<div class="artist d-flex border border-success p-3 mt-3">
				
				<div><img width="200" src="<%= target.get("thumbnail") %>"></div>
				<div class="ml-4">
					
					<div class="display-4"><%= target.get("title") %></div>
					<div class="text-success mt-2 mb-2 font-weight-bold"><%= target.get("singer") %></div>
					<div class="d-flex"> 
						<div class="tit text-secondary">앨범</div>
						<div class="con"><%= target.get("album") %></div>
					</div>
					<div class="d-flex"> 
						<div class="tit text-secondary">재생시간</div>
						<div class="con"><%= minute %> : <%= second %></div>
					</div>
					<div class="d-flex"> 
						<div class="tit text-secondary">작곡가</div>
						<div class="con"><%= target.get("composer") %></div>
					</div>
					<div class="d-flex"> 
						<div class="tit text-secondary">작사가</div>
						<div class="con"><%= target.get("lyricist") %></div>
					</div>
				</div>
				
			</div>				
			<div class="music-lyrics mt-5">
				<h1>가사</h1>
				<hr>
				<div class="lyrics pt-3 pb-4">
					<span class="font-weight-bold">가사정보 없음</span>
				</div>
			</div>
		
		</section>
	
		<jsp:include page="footer.jsp"/>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
</body>
</html>