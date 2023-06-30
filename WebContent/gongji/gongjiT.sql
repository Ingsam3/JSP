--gongjiT 공지 테이블 만들기
create table gongjiT(
    g_no int primary key --오라클 시퀀스로 부터 번호를 가져와서 저장하는 공지 번호->중복 번호가 없고 , null이 없다.
  , g_name varchar2(20) not null --공지 작성자
  , g_title varchar2(200) not null --공지 제목  
  , g_pwd varchar2(20) not null -- 비번
  , g_cont varchar2(4000) not null --공지 내용
  , g_hit int default 0 -- default 0제약조건은 해당 컬럼인 g_hit에 굳이 정수 숫자 번호값을 저장하지 않아도 기본값 0이 저장됨.
  --조회수
  , g_date date default sysdate --공지 등록날짜
);

select * from gongjiT order by g_no desc;

--g_no_seq 시퀀스 생성
create sequence g_no_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시 메모리를 사용하지 않겠다는 의미