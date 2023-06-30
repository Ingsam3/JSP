<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지 작성폼</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/gongi.js"></script>
</head>
<body>
<%--
    문제) 1. 관리자 공지 작성자,공지 제목,비밀번호,공지내용을 입력할 수 있는 사용자 입력폼 gongji_write.jsp를 작성하고
    자바 스크립트와 jQuery를 사용해서 유효성 검증 메시지도 함께 띄운다. 네임피라미터 이름은 g_name,g_title,g_pwd,g_co
    nt로 한다. 아이디 선택자로 피라미터 이름과 같게 한다.
       2. gongjiT 공지 테이블을 작성한다.
          컬럼명       자료형          크기  제약조건
      g_no    int           기본키
      g_name  varchar2 20   not null
      g_title varchar2 200  not null
      g_pwd   varchar2 20   not null
      g_cont  varchar2 4000 not null
      g_hit   int           default 0
      g_date  date          default sysdate
      
      1부터 시작하고, 1씩 증가하고, 임시메모리를 사용하지 않는 g_no_seq시퀀스를 작성한다.
      
      3. com.naver.vo패키지에 데이터 저장빈 클래스 GongjiVO.java를 작성하고,com.naver.dao패키지에 GongjiDAO
      Impl.java를 작성한다. 공지 저장 파일 gongji_write_ok.jsp를 작성하고 저장메서드로 다음과 같이 정의한다.
      public int gongji_insert(GongjiVO g){}
      
      4. 관리자 공지 목록 보기 gongji_list.jsp를 작성한다. GongjiDAOImpl.java에 다음과 사용자 정의 메서드를 
      작성하면 된다. 
         public List<GongjiVO> getGongjiList(){}
         
      5. 관리자 공지 내용보기 gongji_cont.jsp를 작성한다. GongjiDAOImpl.java에 다음과 같은 메서드를 작성한다.
         public GongjiVO getGongjiCont(int gongjino){
         }
         
      6.관리자 공지 수정폼 gongji_edit.jsp를 작성한다. get방식으로 gongji_edit.jsp?gongjino=번호값이 get
      으로 전달하면서 관리자 공지 수정폼 창이 나오면 된다.여기서는 기존 메서드(getGongjiCont(int gongjino){})
       를 활용한다.
       
       7.관리자 공지 수정완료 gongji_edit_ok.jsp를 작성한다. 비번이 같으면 수정되게 하고,다르면 '비번이 다릅니다!'
       라고 자바스크립트를 활용해서 유효성 검증 메시지를 띄운다.수정완료 메서드는 다음과 같이 작성한다.
          public int updateGongji(GongjiVO eg){ }
          
       8.관리자 공지 삭제폼 gongji_del.jsp를 작성한다. 여기서는 비번 입력폼만 만들고, 비번을 입력하지 않았을 때
       유효성 검증 메시지(Validate) '비밀번호를 입력하세요!'라고 출력되게 만든다.
       
       9.관리자 공지 삭제 완료 gongji_del_ok.jsp를 작성한다. 비번이 다르면 '비번이 다릅니다!'라고 유효성 검증 메시지
       를 띄우고, 비번이  같으면 삭제되게 한다. 삭제 완료 메서드는 다음과 같다.
         public int delGongji(int gongjino){}      
 --%>
 <form method="post" action="gongji_write_ok.jsp" onsubmit="return gongi_check();">
   <table border="1">
    <tr>
     <th colspan="2">관리자 공지 작성</th>
    </tr>
    <tr>
     <th>공지 작성자</th>
     <td><input name="g_name" id="g_name" size="14" ></td>
         <%-- type속성을 생략하면 기본값으로 text이다. text는 한줄 입력박스를 만든다. --%>
    </tr>
    
    <tr>
     <th>공지 제목</th>
     <td><input name="g_title" id="g_title" size="36" ></td>
    </tr>    
    
    
    <tr>
     <th>비밀번호</th>
     <td><input type="password" name="g_pwd" id="g_pwd" size="14" ></td>
    </tr> 
    
    <tr>
     <th>공지 내용</th>
     <td>
      <textarea name="g_cont" id="g_cont" rows="10" cols="36"></textarea>
     </td>
    </tr>
    
    <tr>
     <th colspan="2">
      <input type="submit" value="공지저장" >
      <input type="reset" value="취소" onclick="$('#g_name').focus();" >
     </th>
    </tr>
   </table>
  </form>
</body>
</html>