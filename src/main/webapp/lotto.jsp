<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
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
List<Integer> lotto =new ArrayList<>();
Random r=new Random();

for(int i=0;i<6;i++){
	int rNum=r.nextInt(40)+1;
	lotto.add(rNum);
	
}
%>
<table border="1">
<tr>
<%
for(int j=0;j<lotto.size();j++){
%>

	<td><%=lotto.get(j) %></td>

<%}
%>
</tr>

</table>
</body>
</html>