<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.MemberDAOImpl,com.naver.vo.Member7VO" %>
<%
    String id=request.getParameter("id");//get으로 전달된 아이디값을 받는다.
    
    MemberDAOImpl mdao = new MemberDAOImpl();
    Member7VO m = mdao.getMemberInfo(id);//아이디에 해당하는 회원정보를 오라클 DB로 부터 가져온다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 폼</title>
<script src="../js/jquery.js"></script>
<script src="../js/join.js"></script>
</head>
<body>
 <h2>회원정보 수정</h2>
 <form method="post" action="member_edit_ok.jsp" onsubmit="return join_check();">
  <table border="1">
   <tr>
    <th>아이디</th>
    <td><input name="mem_id" id="mem_id" readonly value="<%=m.getMem_id()%>" ></td>
    <%-- 회원정보 수정에서 아이디는 수정안한다. 그러므로 readonly로 설정해서 단지 읽기만 가능하다. 입력필드에
    포커스를 못가진다. --%>    
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="mem_pwd" id="mem_pwd" size="14" ></td>
   </tr>
   <tr>
    <th>회원이름</th>
    <td><input name="mem_name" id="mem_name" size="14" value="<%=m.getMem_name()%>" ></td>
   </tr>
   <tr>
    <th>폰번호</th>
    <td><input name="mem_phone" id="mem_phone" size="20" value="<%=m.getMem_phone()%>"></td>
   </tr>
   <tr>
    <th>이메일</th>
    <td><input name="mem_email" id="mem_email" size="30" value="<%=m.getMem_email()%>"></td>
   </tr>
   <tr>
    <th colspan="2">
    <input type="submit" value="회원수정" >
    <input type="reset" value="수정취소" onclick="$('#mem_pwd').focus();">
    </th>
   </tr>
  </table>
 </form>
</body>
</html>