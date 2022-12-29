<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
header{
text-align:center;
border:1px solid;
}
nav{
border:1px solid;
}
ul{
list-style-type: none;
display: flex;
}
ul>li{
margin-right:30px;
}
section{
border:1px solid;
height:600px;
}
footer{
text-align:center;
border:1px solid;
}
td,tr{
border:1px solid;}

</style>
<header>
<h1>(과정평가형 정보처리산업기사)지역구의원투표 프로그램 ver 2020-05</h1>
</header>

<nav>
	<ul word-spacing="1.2em;">
		<li><a href="lookup.jsp">후보조회</a></li>
		<li><a href="vote.jsp">투표하기</a></li>
		<li><a href="voteinfo.jsp">투표검수조회</a></li>
		<li><a href="rank.jsp">후보자등수</a></li>
		<li><a href="index.jsp">홈으로</a></li>
	
	</ul>
</nav>

<section>
<h2>후보조회</h2>
<table>
	<tr>
		<td>후보번호</td>
		<td>성명</td>
		<td>소속정당</td>
		<td>학력</td>
		<td>주민번호</td>
		<td>지역구</td>
		<td>대표전화</td>
	</tr>
<%@page import="Dao.*,Dto.*,java.util.*,java.text.*" %>
<%
	LookupDao dao = new LookupDao();
	List<LookupDto> list =dao.SelectAll();
	for(LookupDto dto :list){
		out.println("<tr>");
		out.println("<td>"+dto.getM_no()+"</td>");
		out.println("<td>"+dto.getM_name()+"</td>");
		out.println("<td>"+dto.getP_code()+"</td>");
		out.println("<td>"+dto.getP_school()+"</td>");
		out.println("<td>"+dto.getM_jumin()+"</td>");
		out.println("<td>"+dto.getM_city()+"</td>");
		out.println("<td>"+dto.getP_tel().replace(" ", "")+"</td>");
		out.println("</tr>");
		
	}

%>

</table>
</section>

<footer>HRDKOREA Copyrightⓒ2015 All rights reserved. Human REsources Development Service of Korea</footer>

</body>
</html>