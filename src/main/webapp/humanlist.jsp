<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.vo.HumanVo"%>
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

String[] names={"김홍균","김아영","이명관","이왕균","이보성"};
Random r=new Random();
List<HumanVo> humanList=new ArrayList<>();


  while(humanList.size()<5){
	int rNum=r.nextInt(5);
	if(humanList.contains(humanList.get(rNum))){
		HumanVo human=new HumanVo();
		human.setName(names[rNum]);
		humanList.add(human);
		
	}
	
}

for(HumanVo human : humanList){
	out.println(human+"<br>");
}


%>
</body>
</html>