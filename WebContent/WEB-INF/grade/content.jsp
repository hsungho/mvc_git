<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	div.memberClass{font-size: 20px}
</style>
<div id="" class="memberClass box">
  <h1>성적관리</h1><br/>
            <div style="width:300px;margin:0 auto;text-align: left;">
			<ol>
				<li><a href="${context}/grade.do?regist">등록</a></li>
				<li><a href="${context}/grade.do?update">수정</a></li>
				<li><a href="${context}/grade.do?delete">삭제</a></li>
				<li><a href="${context}/grade.do?list">목록</a></li>
				<li><a href="${context}/grade.do?count">카운트</a></li>
				<li><a href="${context}/grade.do?search">검색</a></li>
			
			
			</ol>	
			</div>	
<a href="${context}/home.do">
		<img src="${img}/home.png" alt="home" style="width: 30px"/>
	</a>
</div>

