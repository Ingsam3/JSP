<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.*,com.naver.dao.MemberDAOImpl" %>
<%
    request.setCharacterEncoding("UTF-8");//method=post방식으로 전송되는 한글을 서버에서 받을 때 안깨지게
    //한다.
%>
<jsp:useBean id="mem" class="com.naver.vo.Member7VO" /> 
<%-- jsp유즈빈 액션태그이다. Member7VO빈클래스의 객체명 mem을 생성 --%>
<jsp:setProperty name="mem" property="*" />
<%--값 저장 액션태그이다. name속성명으로 객체명 mem을 참조, 프로퍼티 속성값을 *로 처리할 수 있는 이유가 빈클래스 변수명과
네임피라미터 이름이 같기 때문이다.그만큼 코드 라인을 줄일 수 있다. --%>
회원아이디:<jsp:getProperty name="mem" property="mem_id" />
<%--값 반환 액션태그이다. 자바코드로 표현하면 mem.getMem_id();와 같은 역할을 한다. --%>
회원이름:<%=mem.getMem_name()%><hr>

<%
    MemberDAOImpl mdao=new MemberDAOImpl();
    int result=mdao.insertMember(mem);//회원 저장
    
    if(result == 1){
    	out.println("<script>");
    	out.println("alert('회원가입에 성공했습니다!');");
    	out.println("location='member_list.jsp';");
    	out.println("</script>");
    }
%>
