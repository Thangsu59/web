<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
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
List<Integer> mList =new ArrayList<>();
Random r=new Random();


for(int i=0;i<10;i++){
	int rNum=r.nextInt(100)+1;
	if(mList.indexOf(rNum)==-1){
		mList.add(rNum);
	}
	else{
		i--;
	}
}
int max= mList.get(0);
int min=mList.get(0);

for(int i=1;i<mList.size();i++){
	if(max<mList.get(i)){
		max=mList.get(i);
	}
	if(min>mList.get(i)){
		min=mList.get(i);
	}
}


%>
<table border="1">
<tr>
<%
for(int j=0;j<mList.size();j++){
%>

	<td><%=mList.get(j) %></td>
<%}
%>
</tr>
최댓값=<%=max%>, 최솟값=<%=min%>
</body>
</html>