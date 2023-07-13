<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String biTitle=request.getParameter("biTitle");
if (biTitle != null && biTitle.length() !=0 ){
	String biContent=request.getParameter("biContent");
	String biWriter=request.getParameter("biWriter");
	String biCnt=request.getParameter("biCnt");

	out.println("biContent : "+biContent);
	out.println("biWriter : "+biWriter);
	out.println("biCnt: "+biCnt);
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO BOARD_INFO(BI_TITLE,BI_CONTENT,BI_WRITER,BI_CREDAT,BI_CNT)";
	sql += " values('"+biTitle+"','"+biContent+"','"+biWriter+"',Now(),'"+biCnt+"')";
	int result = stmt.executeUpdate(sql);
	if (result == 1) {
		
		%>
		<script>
			alert("<%=biTitle%>이 등록되었습니다.");

		</script>
			<%
			}

			}
			%>
<form>
	<label for="biTitle">제목</label> 
	<input type="text" id="biTitle" name="biTitle"><br>
	<label for="biContent">내용</label> 
	<input type="text" id="biContent" name="biContent"><br>
	<label for="biWriter">작가</label> 
	<input type="text" id="biWriter" name="biWriter"><br>
	<label for="biCnt">조회수</label> 
	<input type="text" id="biCnt" name="biCnt"><br>
	<button>등록</button>
</form>



</body>
</html>