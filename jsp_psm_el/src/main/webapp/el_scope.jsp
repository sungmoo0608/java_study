<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>SCOPE 예제</h1>
	<%
	
		application.setAttribute("app_name", "app_value");
		session.setAttribute("session_name", "session_value");
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
	
	%>
	
	<jsp:forward page="obj.jsp"></jsp:forward>
	
	어플리케이션 스코프 : ${applicationScope.app_name}<br>
	세션 스코프 : ${sessionScope.session_name}<br>
	페이지 스코프 : ${pageScope.page_name}<br>
	리퀘스트 스코프 : ${requestScope.request_name}<br> 
	
	
	<form action="obj.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		패스워드 : <input type="password" name="pw"><br>
		<input type="submit" value="login">
	</form>
	
</body>
</html>