<%@page import="com.bigdata2019.emaillist01.dao.EmailListDao"%>
<%@page import="com.bigdata2019.emaillist01.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
	request.setCharacterEncoding("UTF-8");
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");

	EmailListVo vo = new EmailListVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);

	new EmailListDao().insert(vo);
	
	/*
	After insertion, deletion or update of an instance,
	the page should not stay in the request page as the request can be 
	executed multiple times from refreshing the page.
	
	Should be redirected to another page.
	*/
	response.sendRedirect("/emaillist01");
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>