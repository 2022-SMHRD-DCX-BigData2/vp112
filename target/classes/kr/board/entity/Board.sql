
select * from tbl_community;




-- 테이블 생성 SQL - tbl_member
CREATE TABLE tbl_member
(
    `mem_id`        VARCHAR(20)    NOT NULL    COMMENT '회원 아이디', 
    `mem_pw`        VARCHAR(30)    NOT NULL    COMMENT '회원 비밀번호', 
    `mem_name`      VARCHAR(30)    NOT NULL    COMMENT '회원 이름', 
    `mem_phone`     VARCHAR(20)    NOT NULL    COMMENT '회원 휴대폰', 
    `mem_joindate`  DATETIME       NOT NULL    DEFAULT NOW() COMMENT '회원 가입일자', 
    `mem_type`      CHAR(1)        NOT NULL    DEFAULT 'M' COMMENT '회원 유형. 일반회원:''M'',  관리자:''A''', 
     PRIMARY KEY (mem_id)
);
-- 테이블 Comment 설정 SQL - tbl_member
ALTER TABLE tbl_member COMMENT '회원 정보';







-- 테이블 생성 SQL - tbl_community
CREATE TABLE tbl_community
(
    `comm_idx`      INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '글 번호', 
    `comm_title`    VARCHAR(600)     NOT NULL    COMMENT '글 제목', 
    `comm_content`  TEXT             NOT NULL    COMMENT '글 내용', 
    `comm_file`     VARCHAR(600)     NULL        COMMENT '글 첨부파일', 
    `comm_date`     DATETIME         NOT NULL    COMMENT '글 작성일자', 
    `mem_id`        VARCHAR(20)      NOT NULL    COMMENT '글 작성자', 
    `comm_views`    INT              NOT NULL    COMMENT '글 조회수', 
    `comm_shares`   DECIMAL(12,1)    NOT NULL    COMMENT '글 공감수', 
     PRIMARY KEY (comm_idx)
);
-- 테이블 Comment 설정 SQL - tbl_community
ALTER TABLE tbl_community COMMENT '커뮤니티 게시판';
-- Foreign Key 설정 SQL - tbl_community(mem_id) -> tbl_member(mem_id)
ALTER TABLE tbl_community
    ADD CONSTRAINT FK_tbl_community_mem_id_tbl_memb FOREIGN KEY (mem_id)
        REFERENCES tbl_member (mem_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

        



-- 테이블 생성 SQL - tbl_comment
CREATE TABLE tbl_comment
(
    `cmt_idx`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '댓글 순번', 
    `comm_idx`     INT UNSIGNED    NOT NULL    COMMENT '원글 순번', 
    `cmt_content`  TEXT            NOT NULL    COMMENT '댓글 내용', 
    `cmt_date`     DATETIME        NOT NULL    COMMENT '댓글 작성일자', 
    `mem_id`       VARCHAR(20)     NOT NULL    COMMENT '댓글 작성자', 
     PRIMARY KEY (cmt_idx)
);
-- 테이블 Comment 설정 SQL - tbl_comment
ALTER TABLE tbl_comment COMMENT '댓글';
-- Foreign Key 설정 SQL - tbl_comment(comm_idx) -> tbl_community(comm_idx)
ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_comm_idx_tbl_comm FOREIGN KEY (comm_idx)
        REFERENCES tbl_community (comm_idx) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_mem_id_tbl_member FOREIGN KEY (mem_id)
        REFERENCES tbl_member (mem_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

        
        
        
                

        
        

-- 테이블 생성 SQL - tbl_voicepishing
CREATE TABLE tbl_voicepishing
(
    `vp_seq`     INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '봉이스피싱 번호', 
    `vp_loan`    TEXT            NULL        COMMENT '대출 사기형', 
    `vp_agency`  TEXT            NULL        COMMENT '수사기관 사칭형', 
     PRIMARY KEY (vp_seq)
);
-- 테이블 Comment 설정 SQL - tbl_voicepishing
ALTER TABLE tbl_voicepishing COMMENT '보이스피싱 데이터';




--------------
--------------
---------------

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

DROP TABLE member;
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


DROP TABLE board;

create table vp112(
   idx int not null auto_increment,
   title varchar(1000) not null,
   content varchar(3000) not null,
   writer varchar(1000) not null,
   indate datetime not null default now(),
   count int not null default 0,
   primary key(idx)
);

--테이블에 값 넣기 
insert into vp112(title, content, writer)
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
values('스프링 게시판','오늘 처음 써봅니다..','김현정');
--board테이블에 회원 아이디 컬럼 추가
alter table vp112 add memId varchar(50);

--------------
select * from vp112;


--테이블삭제
DROP TABLE vp112;

--테이블 데이터 일부 삭제
DELETE FROM board WHERE memId = NULL;





