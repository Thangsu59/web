
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
Connection con = DBCon.getCon(); 
String sql = "SELECT MI_NUM, MI_TITLE, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>장르</th>
		<th>상영일</th>
		<th>관객수</th>
	</tr>
<%
while(rs.next()){
%>
	<tr>
		<td><%=rs.getString("MI_NUM") %></td>
		<td><a href="<%=root%>/movie/movie-view.jsp?miNum=<%=rs.getString("MI_NUM")%>"><%=rs.getString("MI_TITLE") %></a></td>
		<td><%=rs.getString("MI_GENRE") %></td>
		<td><%=rs.getString("MI_CREDAT") %></td>
		<td><%=rs.getString("MI_CNT") %></td>
	</tr>
<%
} 
%>
	<tr>
		<td colspan="5" align="right"><button onclick="location.href='<%=root%>/movie/movie-insert.jsp'">등록</button></td>
	</tr>
</table>
</body>
</html>