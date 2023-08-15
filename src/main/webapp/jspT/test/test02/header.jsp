<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="d-flex">
			<div class="logo d-flaex align-items-center">
				<h1 class="text-success">Melong</h1>
			</div>
			<form metohd="get" action="/jspT/test/test02/test02-detail.jsp">
				<div class="serch">
					<div class="input-group mb-3">
					  <input type="text" class="form-control" name="title" aria-describedby="basic-addon2">
					  <div class="input-group-append">
					    <button class="btn btn-info" type="submit">검색</button>
					  </div>
					</div>
				</div>
			</form>	
		</header>
</body>
</html>