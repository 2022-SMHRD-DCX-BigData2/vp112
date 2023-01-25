
--회원 테이블 만들기	
create table member(
	memId varchar(50) not null,
	memPw varchar(50) not null,
	memName varchar(50) not null,
	primary key(memId)
);

--테이블 조회
select * from member;

--테이블에 값 넣기 
insert into member values("admin","1234","관리자");
insert into member values("jiyun","123","오지윤");
insert into member values("test","test","김현정");


---------------

--게시판 테이블 만들기	
create table board(
   idx int not null auto_increment,
   title varchar(1000) not null,
   content varchar(3000) not null,
   writer varchar(1000) not null,
   indate datetime not null default now(),
   count int not null default 0,
   primary key(idx)
);

--테이블 조회
select * from board;

--테이블에 값 넣기 
insert into board(title, content, writer)
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
--board테이블에 회원 아이디 컬럼 추가
alter table board add memId varchar(50);

--------------
select * from vp112;


--테이블삭제
DROP TABLE vp112;

--테이블 데이터 일부 삭제
DELETE FROM board WHERE memId = NULL;





