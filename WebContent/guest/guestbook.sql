--?��?��?�� ?���? 주석�?(comment)
/*
  ?��?��?�� ?���? ?��?�� 주석�? 기호
*/
--guestbook방명�? ?��?���? 만들�?
create table guestbook(
  gno number(38) primary key --?��?��?�� ?��???���? �??�� 번호�? �??��???�� ???��?��?�� 방명�? 번호->중복 번호�? ?���? , null?�� ?��?��.
  ,gname varchar2(30) not null --�??��?��
  ,gtitle varchar2(200) not null --�??���?
  , gpwd varchar2(20) not null --비�?번호
  , gcont varchar2(4000) not null --
  , ghit number(38) default 0 -- default 0?��?��조건?? ?��?�� 컬럼?�� ghit?�� 굳이 ?��?�� ?��?�� 번호값을 ???��?���? ?��?��?�� 기본�? 0?�� ???��?��.
  --조회?��
  ,gdate date --방명�? ?��록날�?
);
select * from guestbook order by gno desc;
--gno_seq ?��???�� ?��?��
create sequence gno_seq
start with 1 --1�??�� ?��?��
increment by 1 --1?�� 증�?
nocache; --?��?�� 메모리�?? ?��?��?���? ?��겠다?�� ?���?

--?��?��?�� ?��???�� 번호�? ?��?��
select gno_seq.nextval as "gno_seq?��???�� 번호�?" from dual;


