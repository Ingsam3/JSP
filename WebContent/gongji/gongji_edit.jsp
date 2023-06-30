<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl"%>
<%
	int gongjiNo = Integer.parseInt(request.getParameter("gongjino"));//get으로 전달된 공지번호를 받아서 정수 숫자로 변경해서 좌측 변수에 저장
	GongjiDAOImpl gdao = new GongjiDAOImpl();

	GongjiVO g = gdao.getGongjiCont(gongjiNo);//공지번호에 해당하는 공지내용를 가져온다.
%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 수정폼</title>
<script src="../js/jquery.js"></script>
<script src="../js/gongji.js"></script>
</head>
<body>
<form method="post" action="gongji_edit_ok.jsp" onsubmit="return g_check();">
   <input type="hidden" name="g_no" value="<%=gongjiNo%>" >
   <table border="1">
    <tr>
     <th colspan="2">관리자 공지 수정</th>
    </tr>
    <tr>
     <th>공지 작성자</th>
     <td><input name="g_name" id="g_name" size="14" value="<%=g.getG_name()%>"></td>
         <%-- type속성을 생략하면 기본값으로 text이다. text는 한줄 입력박스를 만든다. --%>
    </tr>
    
    <tr>
     <th>공지 제목</th>
     <td><input name="g_title" id="g_title" size="36" value="<%=g.getG_title()%>"></td>
    </tr>    
    
    
    <tr>
     <th>비밀번호</th>
     <td><input type="password" name="g_pwd" id="g_pwd" size="14" ></td>
    </tr> 
    
    <tr>
     <th>공지 내용</th>
     <td>
      <textarea name="g_cont" id="g_cont" rows="10" cols="36"><%=g.getG_cont()%></textarea>
     </td>
    </tr>
    
    <tr>
     <th colspan="2">
      <input type="submit" value="공지수정" >
      <input type="reset" value="취소" onclick="$('#g_name').focus();" >
     </th>
    </tr>
   </table>
  </form>
</body>
</html>