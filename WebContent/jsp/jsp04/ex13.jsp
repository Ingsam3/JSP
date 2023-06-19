<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
<%@ page import="java.io.*, java.net.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13. application 객체 이용하여 자원읽기</title>
</head>
<body>
<h3>application 객체 이용하여 자원읽기</h3>
<%String resourcePath ="jsp/messege/notice.txt";
char [] buff = new char [128];
int len =-1;

URL = url = application.getResource(resourcePath);
//지정한 경로에 해당하는 자원에 접근할 수 있는 URL 객체를 반환한다

try(InputStreamReader br = new InputStreamReader(url.openStream(),"UTF-8")){
	//openStream() 사용해서 주어진 자원으로부터 데이터를 읽어오는 입력 스트림을 생성
	while((len =br.read(buff))!= -1){
		out.println(new String(buff,0,len));
	}
}catch(IOException ie){
	out.println("예외 발생 : "+ie.getMessage());
	//예외 에러 메세지 출력
}

%>
</body>
</html>

 --%>    
