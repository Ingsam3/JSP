<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11. 절대 경로를 사용하여 자원 읽어오기</title>
</head>
<body>
<h2>절대 경로를 사용하여 자원 읽어오기</h2>
<%
	char[] buff = new char[128];
	int len =-1;
	 //절대경로로 경로지정
	String filePath ="D:\\오전_과평_이예원\\Spring\\JSP\\WebContent\\jsp\\jsp04\\message\\notice.txt";

	try(InputStreamReader br = new InputStreamReader(new FileInputStream(filePath),"UTF-8")){
		/*
		jdk1.7 이후부터 AutoCloseable 인터페이스 구현 상속 받은 자손은 try() 내에서 객체를 생성하면 
		finally 문에서 명시적으로 close() 하지 않아도 자동으로 닫힌다.
		*/
		while((len =br.read(buff)) != -1){
			/*buff 배열길이 만큼 문자를 읽고 배열에 저장, 읽은 문자수를 반환,
			더이상 읽을 값이 없다면 -1 
			*/
			out.println(new String(buff,0,len));
			//buff문자 배열로 부터 0에서 len 길이만큼 읽어서 문자열 객체로 반환하여 출력
		}
	}catch(IOException ie){
		out.println("예외 발생 : " + ie.getMessage());
	}
%>
</body>
</html>