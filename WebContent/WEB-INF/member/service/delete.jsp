<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
        <%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${context}/css/member.css" />
</head>
<body>
<% MemberService service = MemberServiceImpl.getInstance();
MemberBean member = service.show();
%>
	<div class="box">
		<h1> 탈퇴화면</h1> 
				<form action="${context}/member/result/delete_result.jsp" method = "post">
	  	 	   <span class = "meta">비번을 입력하세요</span><input type="password" name ="confpw"/><br />
	  	 	   <input type="hidden" name="id" value=<%=member.getId() %>/>
	 		   <input type="hidden" name="pw" value=<%=member.getPw() %>/>
	 		   <input type="submit" value="탈퇴" />
	           <input type="submit" value="취소" />
	    </form>
	<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="home" style="width: 30px"/>
	</a>
	<a href="${context}/member/member_controller.jsp">
		<img src="${img}/Previous.png" alt="member" style="width: 30px"/>
	</a>
	</div>
	
</body>
</html>