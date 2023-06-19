<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12. Application 내장객체 하위의 메소드를 활용</title>
</head>
<body>
<h3>Application jsp 내장객체 하위의 메소드를 활용해서 notice.txt 파일 읽어오기</h3>
<%
	  String path="/jsp04/messege/notice.txt";
%>
자원의 실제 경로 : <br>
<%=application.getRealPath(path) %>
<hr>
<%=path %>의 내용 : <br>
<%
	char [] buff = new char [128];
	int len =-1;
	
	try(InputStreamReader br = new InputStreamReader(application.getResourceAsStream(path),
			"UTF-8")){ 
		/*getResourceAsStream(path) : 지정한 경로에 해당하는 자원으로부터 자료를 읽어올 수 있는 
		inputStream을 반환한다*/ 
		while((len =br.read(buff)) != -1){
			out.println(new String(buff,0,len));
		}
	}catch(IOException ie){
		out.println("예외 발생 : "+ie.getMessage());
		//예외 에러 메세지 출력
	}
%>
</body>
</html>