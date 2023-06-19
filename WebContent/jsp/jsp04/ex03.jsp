<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page buffer="1kb" autoFlush="false" %>    
<%-- 
	buffer : 버퍼의 크기를 지정. 버퍼 속성을 지정하지 않으면 최소크기 8kb 갖는 버퍼 사용
	                    버퍼크키 단위(kb) 	  
	autoFlush : 버퍼(임시 메모리)가 찼을 때 어떻게 처리할 지 설정할 수 있다.(보통 true)
			        속성값을 false로 지정시, 버퍼가 다 차면 예외 오류를 발생시키고 작업이 중지된다.
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3. page buffer</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
	<h2>autoFlush  속성값 false 예제</h2>
	<% for(int i=0; i<=1000; i++){
			out.println(" 1234");
		} 
	%>
</body>
</html>