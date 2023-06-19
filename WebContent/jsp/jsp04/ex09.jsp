<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9. 설정된 초기화 파라미터 읽어오기 </title>
</head>
<body>
<h3>Web.xml에 설정된 초기화 파라미터 읽어오기</h3>
초기화 파라미터 목록 :
<ul>
	<%
	Enumeration<String> initParamEnum = application.getInitParameterNames();
	//웹 애플리케이션 초기화 파라미터 목록을 Enumeration 타입으로 반환한다.
	while(initParamEnum.hasMoreElements()){	
		String initParaNames = initParamEnum.nextElement();//파라미터 이름을 구함
	%>
		<li>
		<%=initParaNames %> : <%=application.getInitParameter(initParaNames) %>
		<!-- getInitParameter(String name); : 메소드는 파라미터 이름에 해당하는 초기화 파라미터 값을 구한다
		해당 값이 없으면 null을 반환한다 -->
		</li>
	
	<%
	}
	%>

</ul>
</body>
</html>