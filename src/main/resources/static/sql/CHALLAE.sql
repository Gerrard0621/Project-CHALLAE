<<<<<<< HEAD

-- CREATE TABLE MEMBER (
--     MEMBER_NUM       NUMBER(10)  PRIMARY KEY,
--     MEMBER_ID        VARCHAR2(20)    NOT NULL,
--     MEMBER_PASSWD    VARCHAR2(20)    NOT NULL,
--     MEMBER_NAME      VARCHAR2(20)    NOT NULL,
--     MEMBER_DIR       CHAR(1),
--     MEMBER_PHONE     VARCHAR2(20)    NOT NULL,
--     MEMBER_EMAIL     VARCHAR2(20)    NOT NULL,
--     MEMBER_REGDATE   DATE            DEFAULT SYSDATE,
--     MEMBER_PHOTO     VARCHAR2(20)    DEFAULT 'img/teamlogo.jpg',
--     CLUB_NUM         NUMBER(10)
-- );


-- INSERT INTO MEMBER (MEMBER_NUM, MEMBER_ID, MEMBER_PASSWD, MEMBER_NAME, MEMBER_DIR, MEMBER_PHONE, MEMBER_EMAIL, MEMBER_REGDATE) 
--             VALUES (1, 'admin', '1111', '관리자', 'N', '010-1111-1111', 'admin@gmail.com', SYSDATE);

-- SELECT *
-- FROM MEMBER;

-- DROP TABLE MEMBER;


-- CREATE TABLE FIELD (
-- 	FIELD_NUM	NUMBER(10)	PRIMARY KEY,
-- 	FIELD_NAME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_OLDADDRESS	VARCHAR2(50)	NULL,
-- 	FIELD_NEWADDRESS	VARCHAR2(50)	NULL,
-- 	FIELD_PHONE	VARCHAR2(20)	NOT NULL,
-- 	FIELD_REGDATE	DATE  DEFAULT SYSDATE,
-- 	FIELD_SIZE	VARCHAR2(20)	NOT NULL,
-- 	FIELD_PHOTO	VARCHAR2(50) DEFAULT 'img/teamlogo.jpg',
-- 	FIELD_DAYPRICE	NUMBER	NULL,
-- 	FIELD_ENDPRICE	NUMBER	NULL,
-- 	FIELD_PAYDATE	DATE	NULL,
-- 	FIELD_OPENTIME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_CLOSETIME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_THUMBNAILS	VARCHAR2(50)	 DEFAULT 'img/teamlogo.jpg',
-- 	FIELD_DETAILADDRESS	VARCHAR2(50)	NULL
-- );

-- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE,FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME,FIELD_DETAILADDRESS) 
--             VALUES (1, 'Football Field', '123 Old St', '456 New Ave', '010-1234-5678', '100x50m','field1.jpg', 50000, 70000, TO_DATE('2024-05-17', 'YYYY-MM-DD'), '08:00', '20:00','Building 7');

-- DROP TABLE FIELD;

-- CREATE TABLE CLUB (
-- 	CLUB_NUM	NUMBER(10)	PRIMARY KEY,
--     CLUB_NAME	VARCHAR2(20)	NOT NULL,
-- 	CLUB_INFO	VARCHAR2(100)	NULL,
-- 	CLUB_MEMBERCOUNT	NUMBER(20)	NOT NULL,
-- 	CLUB_PHOTO	VARCHAR2(50) DEFAULT 'img/teamlogo.jpg' ,
-- 	CLUB_LEVEL	VARCHAR2(20)	NOT NULL,
-- 	CLUB_REGDATE	DATE DEFAULT SYSDATE,
-- 	CLUB_LOCATION	VARCHAR2(20) NOT NULL,
-- 	CLUB_PHONE	VARCHAR2(20)	NOT NULL
-- );

-- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_PRESIDENT, CLUB_INFO, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE) 
--         VALUES (CLUB_SEQ.NEXTVAL, '배고파', '민경찬', '배고픈 사람들의 풋살 클럽입니다.', '하', '서울시 노원구', '010-0000-0001');

-- DROP TABLE CLUB;

-- CREATE TABLE RECORD_FC (
-- 	REC_NO	NUMBER(10)	PRIMARY KEY,
-- 	REC_FID	VARCHAR2(20)	NOT NULL,
-- 	REC_SCO	VARCHAR2(20)	NULL,
-- 	REC_DATE DATE	NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RECORD_FC (REC_NO, REC_FID, REC_SCO, REC_DATE, CLUB_NUM) 
--        VALUES (1, 'game123', '3-2', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);

-- CREATE TABLE RESERVATION (
-- 	RES_NUM	NUMBER(10)	PRIMARY KEY,
-- 	RES_RESDATE	DATE	NOT NULL,
-- 	RES_PRICE	NUMBER(10)	NOT NULL,
-- 	RES_STARTTIME	VARCHAR2(20)	NOT NULL,
-- 	RES_ENDTIME	VARCHAR2(20)	NOT NULL,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM) 
--        VALUES (1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 100000, '10:00', '12:00', 1);

-- CREATE TABLE RESLIST (
-- 	RESLIST_INFO	VARCHAR2(20)	NULL,
-- 	RES_NUM	NUMBER(10)	NOT NULL,
-- 	FIELD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM) 
--        VALUES ('Booking Info', 1, 1);

-- CREATE TABLE PAYMENT (
-- 	PAY_NUM	NUMBER(10)	PRIMARY KEY,
-- 	APP_PG	VARCHAR2(20)	NOT NULL,
-- 	PAY_DATE	DATE	NOT NULL,
-- 	PAY_PRICE	NUMBER(10)	NOT NULL,
-- 	PAY_BANK	VARCHAR2(20)	NULL,
-- 	RES_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM) 
--     VALUES (1, 'KakaoPay', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 100000, 'KakaoBank', 1);

--     DROP TABLE PAYMENT;

-- CREATE TABLE MATCH (
-- 	MATCH_NUM	NUMBER(10)	PRIMARY KEY,
-- 	MATCH_DATE	VARCHAR2(20)	NOT NULL,
-- 	MATCH_INFO	VARCHAR2(200)	NULL,
-- 	MATCH_TIME	VARCHAR2(20)	NOT NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL,
-- 	FIELD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM) 
--     VALUES (1, '2024-06-01', 'Friendly match between local teams', '15:00', 1, 1);


-- CREATE TABLE MATCHBOARD (
-- 	MB_NUM	NUMBER(10)	PRIMARY KEY,
-- 	MB_NAME	VARCHAR2(20)	NOT NULL,
-- 	MB_FILE	VARCHAR2(50)	NOT NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM) 
--        VALUES (1, 'Match Schedule', 'schedule.pdf', 1);


-- CREATE TABLE COMMUNITY (
-- 	COMM_NUM	NUMBER(10)	PRIMARY KEY,
-- 	COMM_CONTENT	VARCHAR2(30)	NULL,
-- 	COMM_DATE	DATE	NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM) 
--        VALUES (1, 'First community post', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);


-- CREATE TABLE BOARD (
-- 	BOARD_NUM	NUMBER(10)	PRIMARY KEY,
-- 	BOARD_NAME	VARCHAR2(30)	NOT NULL,
-- 	BOARD_INFO	VARCHAR2(500)	NULL
-- );

-- INSERT INTO BOARD ( BOARD_NUM, BOARD_NAME, BOARD_INFO) 
--        VALUES (1, 'General Discussion', 'This board is for general discussion about various topics.');

-- CREATE TABLE ARTICLE (
-- 	ARTICLE_NUM	NUMBER(10)	PRIMARY KEY,
-- 	ARTICLE_TITLE	VARCHAR2(100)	NOT NULL,
-- 	ARTICLE_CONTENT	VARCHAR2(500)	NOT NULL,
-- 	ARTICLE_DATE	DATE DEFAULT SYSDATE,
-- 	ARTICLE_HITCOUNT	NUMBER(20)	DEFAULT 0,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL,
-- 	BOARD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM) 
--        VALUES (1, 'Welcome to the Board', 'This is the first article in the general discussion board.', SYSDATE, 0, 1, 1);


-- CREATE TABLE COMMENTS (
-- 	COMMENT_NUM	NUMBER(10)	PRIMARY KEY,
-- 	COMMENT_CONTENT	VARCHAR2(500)	NOT NULL,
-- 	COMMENT_DATE	DATE	DEFAULT SYSDATE,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL
-- );




























-- --          Other Key           -------------------------------------------------------------------------------------------------------------------
-- ALTER TABLE RECORD_FC
--   ADD(
--     CONSTRAINT REC_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );

-- ALTER TABLE COMMUNITY
--   ADD(
--     CONSTRAINT COMM_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );

-- ALTER TABLE MATCHBOARD
--   ADD(
--     CONSTRAINT MB_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );

-- ALTER TABLE MATCH
--   ADD(
--     CONSTRAINT MATCH_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
--     CONSTRAINT MATCH_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );

-- ALTER TABLE MEMBER
--   ADD(
--     CONSTRAINT MEMBER_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
-- 		-- 감독여부 CK
--     CONSTRAINT MEMBER_DIR_CK CHECK (MEMBER_DIR IN ('Y', 'N'))
-- );

-- ALTER TABLE RESERVATION
--   ADD(
--     CONSTRAINT RES_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );

-- ALTER TABLE RESLIST
--   ADD(
--     CONSTRAINT RESLIST_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM),
--     CONSTRAINT RESLIST_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );

-- ALTER TABLE PAYMENT
--   ADD(
--     CONSTRAINT PAY_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM)
-- );

-- ALTER TABLE ARTICLE
--   ADD(
--     CONSTRAINT ARTICLE_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM),
--     CONSTRAINT ARTICLE_BOARD_NUM_FK FOREIGN KEY(BOARD_NUM) REFERENCES BOARD(BOARD_NUM)
-- );

-- ALTER TABLE COMMENTS
--   ADD(
--     CONSTRAINT COMMENTS_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );
























-- --      시퀀스                    -------------------------------------------------------------------------
-- -- GRANT CREATE SEQUENCE
-- -- TO CHALLAE;

-- -- 클럽전적 REC_NO
-- CREATE SEQUENCE REC_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT REC_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence REC_SEQ;


-- -- 커뮤니티 COMM_NUM
-- CREATE SEQUENCE COMM_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT COMM_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence COMM_SEQ;


-- -- 전략판 MB_NUM
-- CREATE SEQUENCE MB_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT MB_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MB_SEQ;


-- -- 클럽 CLUB_NUM
-- CREATE SEQUENCE CLUB_SEQ
--   START WITH 100
--   INCREMENT BY 1;
-- --
-- SELECT CLUB_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence CLUB_SEQ;


-- -- 매치 MATCH_NUM
-- CREATE SEQUENCE MATCH_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT MATCH_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MATCH_SEQ;


-- -- 구장 FIELD_NUM
-- CREATE SEQUENCE FIELD_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT FIELD_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence FIELD_SEQ;


-- -- 회원 MEMBER_NUM
-- CREATE SEQUENCE MEMBER_SEQ
--   START WITH 1000
--   INCREMENT BY 1;
-- --
-- SELECT MEMBER_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MEMBER_SEQ;


-- -- 예약 RES_NUM
-- CREATE SEQUENCE RES_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT RES_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence RES_SEQ;


-- -- 결제 PAY_NUM
-- CREATE SEQUENCE PAY_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT PAY_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence PAY_SEQ;


-- -- 게시글 ARTICLE_NUM
-- CREATE SEQUENCE ARTICLE_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT ARTICLE_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence ARTICLE_SEQ;


-- -- 게시판 BOARD_NUM
-- CREATE SEQUENCE BOARD_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT BOARD_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence BOARD_SEQ;


-- -- 댓글 COMMENT_NUM
-- CREATE SEQUENCE COMMENT_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT COMMENT_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence COMMENT_SEQ;
































--               더미데이터                 ---------------------------------------------------------------------------

-- FIELD 테이블에 더미 데이터 삽입
-- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE, FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME, FIELD_DETAILADDRESS)
-- VALUES (FIELD_SEQ.nextval, '야구장', '789 Old Blvd', '101 New Plaza', '010-5678-1234', '120x60m', 'field2.jpg', 60000, 80000, TO_DATE('2024-05-18', 'YYYY-MM-DD'), '09:00', '21:00', '건물 8');

-- -- -- CLUB 테이블에 더미 데이터 삽입
-- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- VALUES (CLUB_SEQ.nextval, '야구 클럽', '커뮤니티 야구 클럽', 30, '중', '부산', '010-8765-4321');

-- RECORD_FC 테이블에 더미 데이터 삽입
-- INSERT INTO RECORD_FC (REC_NUM, REC_FID, REC_SCO, REC_DATE, CLUB_NUM)
-- VALUES (REC_SEQ.nextval, 'game456', '승', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);

-- RESERVATION 테이블에 더미 데이터 삽입
-- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM)
-- VALUES (RES_SEQ.nextval, TO_DATE('2024-06-02', 'YYYY-MM-DD'), 120000, '11:00', '13:00', 1002);

-- -- RESLIST 테이블에 더미 데이터 삽입
-- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM)
-- VALUES ('예약 정보', RES_SEQ.currval, FIELD_SEQ.currval);

-- -- PAYMENT 테이블에 더미 데이터 삽입
-- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM)
-- VALUES (PAY_SEQ.nextval, 'PayPal', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 120000, 'HSBC', RES_SEQ.currval);

-- MATCH 테이블에 더미 데이터 삽입
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-06-02', '클럽 간의 토너먼트 경기', '16:00', 100, FIELD_SEQ.currval);

-- MATCHBOARD 테이블에 더미 데이터 삽입
-- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM)
-- VALUES (MB_SEQ.nextval, '경기 일정', 'schedule.pdf', 100);

-- COMMUNITY 테이블에 더미 데이터 삽입
-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM)
-- VALUES (COMM_SEQ.nextval, '첫 커뮤니티 게시글', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);

-- BOARD 테이블에 더미 데이터 삽입
-- INSERT INTO BOARD (BOARD_NUM, BOARD_NAME, BOARD_INFO)
-- VALUES (BOARD_SEQ.nextval, '일반 토론', '다양한 주제에 대한 일반 토론 게시판입니다.');

-- ARTICLE 테이블에 더미 데이터 삽입
-- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM)
-- VALUES (ARTICLE_SEQ.nextval, '게시판에 오신 것을 환영합니다', '일반 토론 게시판의 첫 번째 게시글입니다.', SYSDATE, 0, 1002, BOARD_SEQ.currval);

-- COMMENTS 테이블에 더미 데이터 삽입
-- INSERT INTO COMMENTS (COMMENT_NUM, COMMENT_CONTENT, COMMENT_DATE, MEMBER_NUM)
-- VALUES (COMMENT_SEQ.nextval, '첫 번째 댓글입니다.', SYSDATE, 1002);































-- -- MEMBER 테이블의 모든 데이터 선택
-- SELECT * FROM MEMBER;

-- -- FIELD 테이블의 모든 데이터 선택
-- SELECT * FROM FIELD;

-- -- CLUB 테이블의 모든 데이터 선택
-- SELECT * FROM CLUB;

-- -- RESERVATION 테이블의 모든 데이터 선택
-- SELECT * FROM RESERVATION;

-- -- RESLIST 테이블의 모든 데이터 선택
-- SELECT * FROM RESLIST;

-- -- PAYMENT 테이블의 모든 데이터 선택
-- SELECT * FROM PAYMENT;

-- -- MATCH 테이블의 모든 데이터 선택
-- SELECT * FROM MATCH;

-- -- MATCHBOARD 테이블의 모든 데이터 선택
-- SELECT * FROM MATCHBOARD;

-- -- COMMUNITY 테이블의 모든 데이터 선택
-- SELECT * FROM COMMUNITY;

-- -- BOARD 테이블의 모든 데이터 선택
-- SELECT * FROM BOARD;































-- --------메모--------
-- -- REC_NO 속성 이름 NUM 변경
-- ALTER TABLE RECORD_FC RENAME COLUMN REC_NO TO REC_NUM;

-- SELECT * FROM RECORD_FC;

-- -- 이메일, 전화번호 등 UK 추가
-- ALTER TABLE MEMBER ADD (
--   CONSTRAINT MEMBER_EMAIL_UK UNIQUE(MEMBER_EMAIL),
--   CONSTRAINT MEMBER_PHONE_UK UNIQUE(MEMBER_PHONE)
-- );

-- -- 회원 테이블 감독여부(MEMBER_DIR) 속성 디폴트 'N' 추가
-- ALTER TABLE MEMBER
-- MODIFY MEMBER_DIR DEFAULT 'N';

-- -- 이미지 컬럼 추가
-- -- 멤버 테이블 등번호 컬럼 추가(등번호는 감독이 내팀에서 수정)

-- -- 전적 승패 CK
-- ALTER TABLE RECORD_FC ADD (
--     CONSTRAINT REC_SCO_CK CHECK (REC_SCO IN ('승', '패'))
-- );

-- -- 1. 테이블 구조 수정: REC_SCO 컬럼의 데이터 타입을 CHAR(3)으로 변경
-- ALTER TABLE RECORD_FC
-- MODIFY REC_SCO CHAR(3);

-- DELETE FROM RECORD_FC
-- WHERE REC_SCO = '3-2';

-- -- 매치 전략판사진 추가
-- ALTER TABLE MATCH
-- ADD MATCH_PHOTO VARCHAR2(50);

-- -- 클럽 클럽장 추가
-- ALTER TABLE CLUB
-- ADD CLUB_PRESIDENT VARCHAR2(20);

-- -- 클럽 더미데이터 업데이트
-- UPDATE CLUB
-- SET CLUB_NAME = '찰래',
--     CLUB_INFO = '백수들 모임 클럽',
--     CLUB_LOCATION = '노원구 공릉동',
--     CLUB_PHONE = '011-1111-1111',
--     CLUB_PRESIDENT = '백찰래'
-- WHERE CLUB_NUM = 100;

-- -- 필드 테이블 데이터 수정
-- UPDATE FIELD 
-- SET 
--     FIELD_NAME = '아산 인주점',
--     FIELD_NEWADDRESS = '아산시 인주면 아산만로 1500',
--     FIELD_PHONE = '010-7221-1904',
--     FIELD_SIZE = '20X40',
--     FIELD_PHOTO = 'siheung.jpg',
--     FIELD_DAYPRICE = 80000,
--     FIELD_ENDPRICE = 90000,
--     FIELD_OPENTIME = '06:00',
--     FIELD_CLOSETIME = '24:00'
-- WHERE
--     FIELD_NUM = 11;

-- -- 클럽 테이블 CLUB_MEMBERCOUNT 속성 수정
-- ALTER TABLE CLUB
-- MODIFY (CLUB_MEMBERCOUNT NUMBER(20) DEFAULT 1);

-- -- 클럽 테이블 CLUB_PRESIDENT 속성 수정
-- ALTER TABLE CLUB
-- MODIFY (CLUB_PRESIDENT VARCHAR2(20) NOT NULL);

-- -- 클럽 테이블 CLUB_STOREDPHOTO 속성 추가
-- ALTER TABLE CLUB
-- ADD (CLUB_STOREDPHOTO VARCHAR2(50));

-- commit;

--         INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_PRESIDENT, CLUB_INFO, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
--         VALUES (CLUB_SEQ.NEXTVAL, '아맞다', '따옴표', '안녕하세요', '상', '서울시 노원구', '010-0000-0003');






















-- -- 세션 정보 확인
-- SELECT
--     SID,
--     SERIAL#,
--     USERNAME,
--     STATUS,
--     MACHINE,
--     PROGRAM,
--     LAST_CALL_ET
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;



-- SELECT
--     *
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;





-- =======
-- CREATE TABLE MEMBER (
--                         MEMBER_NUM       NUMBER(10)  PRIMARY KEY,
--                         MEMBER_ID        VARCHAR2(20)    NOT NULL,
--                         MEMBER_PASSWD    VARCHAR2(20)    NOT NULL,
--                         MEMBER_NAME      VARCHAR2(20)    NOT NULL,
--                         MEMBER_DIR       CHAR(1),
--                         MEMBER_PHONE     VARCHAR2(20)    NOT NULL,
--                         MEMBER_EMAIL     VARCHAR2(20)    NOT NULL,
--                         MEMBER_REGDATE   DATE            DEFAULT SYSDATE,
--                         MEMBER_PHOTO     VARCHAR2(20)    DEFAULT 'img/teamlogo.jpg',
--                         CLUB_NUM         NUMBER(10)
-- );


-- INSERT INTO MEMBER (MEMBER_NUM, MEMBER_ID, MEMBER_PASSWD, MEMBER_NAME, MEMBER_DIR, MEMBER_PHONE, MEMBER_EMAIL, MEMBER_REGDATE)
-- VALUES (1, 'admin', '1111', '관리자', 'N', '010-1111-1111', 'admin@gmail.com', SYSDATE);

-- SELECT *
-- FROM MEMBER;

-- DROP TABLE MEMBER;


-- CREATE TABLE FIELD (
--                        FIELD_NUM	NUMBER(10)	PRIMARY KEY,
--                        FIELD_NAME	VARCHAR2(20)	NOT NULL,
--                        FIELD_OLDADDRESS	VARCHAR2(50)	NULL,
--                        FIELD_NEWADDRESS	VARCHAR2(50)	NULL,
--                        FIELD_PHONE	VARCHAR2(20)	NOT NULL,
--                        FIELD_REGDATE	DATE  DEFAULT SYSDATE,
--                        FIELD_SIZE	VARCHAR2(20)	NOT NULL,
--                        FIELD_PHOTO	VARCHAR2(50) DEFAULT 'img/teamlogo.jpg',
--                        FIELD_DAYPRICE	NUMBER	NULL,
--                        FIELD_ENDPRICE	NUMBER	NULL,
--                        FIELD_PAYDATE	DATE	NULL,
--                        FIELD_OPENTIME	VARCHAR2(20)	NOT NULL,
--                        FIELD_CLOSETIME	VARCHAR2(20)	NOT NULL,
--                        FIELD_THUMBNAILS	VARCHAR2(50)	 DEFAULT 'img/teamlogo.jpg',
--                        FIELD_DETAILADDRESS	VARCHAR2(50)	NULL
-- );

-- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE,FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME,FIELD_DETAILADDRESS)
-- VALUES (1, 'Football Field', '123 Old St', '456 New Ave', '010-1234-5678', '100x50m','field1.jpg', 50000, 70000, TO_DATE('2024-05-17', 'YYYY-MM-DD'), '08:00', '20:00','Building 7');

-- SELECT FIELD_NUM, FIELD_NAME, FIELD_NEWADDRESS, FIELD_OLDADDRESS, FIELD_PHONE, FIELD_PHOTO, FIELD_SIZE, FIELD_DAYPRICE, FIELD_ENDPRICE
-- FROM FIELD;



-- DROP TABLE FIELD;

-- CREATE TABLE CLUB (
--                       CLUB_NUM	NUMBER(10)	PRIMARY KEY,
--                       CLUB_NAME	VARCHAR2(20)	NOT NULL,
--                       CLUB_INFO	VARCHAR2(100)	NULL,
--                       CLUB_MEMBERCOUNT	NUMBER(20)	NOT NULL,
--                       CLUB_PHOTO	VARCHAR2(50) DEFAULT 'img/teamlogo.jpg' ,
--                       CLUB_LEVEL	VARCHAR2(20)	NOT NULL,
--                       CLUB_REGDATE	DATE DEFAULT SYSDATE,
--                       CLUB_LOCATION	VARCHAR2(20) NOT NULL,
--                       CLUB_PHONE	VARCHAR2(20)	NOT NULL
-- );

-- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- VALUES (1, 'Soccer Club', 'A community soccer club', 50, '하', 'Seoul', '010-1234-5678');

-- DROP TABLE CLUB;

-- CREATE TABLE RECORD_FC (
--                            REC_NO	NUMBER(10)	PRIMARY KEY,
--                            REC_FID	VARCHAR2(20)	NOT NULL,
--                            REC_SCO	VARCHAR2(20)	NULL,
--                            REC_DATE DATE	NULL,
--                            CLUB_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RECORD_FC (REC_NO, REC_FID, REC_SCO, REC_DATE, CLUB_NUM)
-- VALUES (1, 'game123', '3-2', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);

-- CREATE TABLE RESERVATION (
--                              RES_NUM	NUMBER(10)	PRIMARY KEY,
--                              RES_RESDATE	DATE	NOT NULL,
--                              RES_PRICE	NUMBER(10)	NOT NULL,
--                              RES_STARTTIME	VARCHAR2(20)	NOT NULL,
--                              RES_ENDTIME	VARCHAR2(20)	NOT NULL,
--                              MEMBER_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM)
-- VALUES (1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 100000, '10:00', '12:00', 1);

-- CREATE TABLE RESLIST (
--                          RESLIST_INFO	VARCHAR2(20)	NULL,
--                          RES_NUM	NUMBER(10)	NOT NULL,
--                          FIELD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM)
-- VALUES ('Booking Info', 1, 1);

-- CREATE TABLE PAYMENT (
--                          PAY_NUM	NUMBER(10)	PRIMARY KEY,
--                          APP_PG	VARCHAR2(20)	NOT NULL,
--                          PAY_DATE	DATE	NOT NULL,
--                          PAY_PRICE	NUMBER(10)	NOT NULL,
--                          PAY_BANK	VARCHAR2(20)	NULL,
--                          RES_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM)
-- VALUES (1, 'KakaoPay', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 100000, 'KakaoBank', 1);

-- DROP TABLE PAYMENT;

-- CREATE TABLE MATCH (
--                        MATCH_NUM	NUMBER(10)	PRIMARY KEY,
--                        MATCH_DATE	VARCHAR2(20)	NOT NULL,
--                        MATCH_INFO	VARCHAR2(200)	NULL,
--                        MATCH_TIME	VARCHAR2(20)	NOT NULL,
--                        CLUB_NUM	NUMBER(10)	NOT NULL,
--                        FIELD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (1, '2024-06-01', 'Friendly match between local teams', '15:00', 1, 1);


-- CREATE TABLE MATCHBOARD (
--                             MB_NUM	NUMBER(10)	PRIMARY KEY,
--                             MB_NAME	VARCHAR2(20)	NOT NULL,
--                             MB_FILE	VARCHAR2(50)	NOT NULL,
--                             CLUB_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM)
-- VALUES (1, 'Match Schedule', 'schedule.pdf', 1);


-- CREATE TABLE COMMUNITY (
--                            COMM_NUM	NUMBER(10)	PRIMARY KEY,
--                            COMM_CONTENT	VARCHAR2(30)	NULL,
--                            COMM_DATE	DATE	NULL,
--                            CLUB_NUM	NUMBER(10)	NOT NULL
-- );
-- -- content에 들어가는 데이터를 위해 확장
-- ALTER TABLE community modify(comm_content VARCHAR2(300));

-- -- 속성추가 (멤버번호)
-- ALTER TABLE COMMUNITY 
-- ADD MEMBER_NUM NUMBER(10) NOT NULL;

-- commit;


-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM)
-- -- VALUES (1, 'First community post', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);


-- CREATE TABLE BOARD (
--                        BOARD_NUM	NUMBER(10)	PRIMARY KEY,
--                        BOARD_NAME	VARCHAR2(30)	NOT NULL,
--                        BOARD_INFO	VARCHAR2(500)	NULL
-- );

-- INSERT INTO BOARD ( BOARD_NUM, BOARD_NAME, BOARD_INFO)
-- VALUES (1, 'General Discussion', 'This board is for general discussion about various topics.');

-- CREATE TABLE ARTICLE (
--                          ARTICLE_NUM	NUMBER(10)	PRIMARY KEY,
--                          ARTICLE_TITLE	VARCHAR2(100)	NOT NULL,
--                          ARTICLE_CONTENT	VARCHAR2(500)	NOT NULL,
--                          ARTICLE_DATE	DATE DEFAULT SYSDATE,
--                          ARTICLE_HITCOUNT	NUMBER(20)	DEFAULT 0,
--                          MEMBER_NUM	NUMBER(10)	NOT NULL,
--                          BOARD_NUM	NUMBER(10)	NOT NULL
-- );

-- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM)
-- VALUES (1, 'Welcome to the Board', 'This is the first article in the general discussion board.', SYSDATE, 0, 1, 1);


-- CREATE TABLE COMMENTS (
--                           COMMENT_NUM	NUMBER(10)	PRIMARY KEY,
--                           COMMENT_CONTENT	VARCHAR2(500)	NOT NULL,
--                           COMMENT_DATE	DATE	DEFAULT SYSDATE,
--                           MEMBER_NUM	NUMBER(10)	NOT NULL
-- );









-- --mapper 전 join문 확인용
-- SELECT match.match_num, match.match_date, match.match_time, match.club_num, match.field_num, field.field_name
-- FROM match
-- JOIN field ON match.field_num = field.field_num
-- WHERE match.club_num = '101';

-- -- AND SUBSTR(match.match_date, 3, 5) = '24-05';

















-- --          Other Key           -------------------------------------------------------------------------------------------------------------------
-- ALTER TABLE RECORD_FC
--     ADD(
--     CONSTRAINT REC_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );

-- ALTER TABLE COMMUNITY
--     ADD(
--     CONSTRAINT COMM_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
    
-- );
-- -- 5/25 데이터 저장을 위한 소통공간 제약조건 추가
-- ALTER TABLE COMMUNITY
--     ADD(
--     CONSTRAINT COMM_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );

-- COMMIT;

-- ALTER TABLE MATCHBOARD
--     ADD(
--     CONSTRAINT MB_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );

-- ALTER TABLE MATCH
--     ADD(
--     CONSTRAINT MATCH_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
--     CONSTRAINT MATCH_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );

-- ALTER TABLE MEMBER
--     ADD(
--     CONSTRAINT MEMBER_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
-- 		-- 감독여부 CK
--     CONSTRAINT MEMBER_DIR_CK CHECK (MEMBER_DIR IN ('Y', 'N'))
-- );

-- ALTER TABLE RESERVATION
--     ADD(
--     CONSTRAINT RES_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );

-- ALTER TABLE RESLIST
--     ADD(
--     CONSTRAINT RESLIST_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM),
--     CONSTRAINT RESLIST_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );

-- ALTER TABLE PAYMENT
--     ADD(
--     CONSTRAINT PAY_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM)
-- );

-- ALTER TABLE ARTICLE
--     ADD(
--     CONSTRAINT ARTICLE_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM),
--     CONSTRAINT ARTICLE_BOARD_NUM_FK FOREIGN KEY(BOARD_NUM) REFERENCES BOARD(BOARD_NUM)
-- );

-- ALTER TABLE COMMENTS
--     ADD(
--     CONSTRAINT COMMENTS_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );
























-- --      시퀀스                    -------------------------------------------------------------------------
-- -- GRANT CREATE SEQUENCE
-- -- TO CHALLAE;

-- -- 클럽전적 REC_NO
-- CREATE SEQUENCE REC_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT REC_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence REC_SEQ;


-- -- 커뮤니티 COMM_NUM
-- CREATE SEQUENCE COMM_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT COMM_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence COMM_SEQ;


-- -- 전략판 MB_NUM
-- CREATE SEQUENCE MB_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT MB_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MB_SEQ;


-- -- 클럽 CLUB_NUM
-- CREATE SEQUENCE CLUB_SEQ
--     START WITH 100
--     INCREMENT BY 1;
-- --
-- SELECT CLUB_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence CLUB_SEQ;


-- -- 매치 MATCH_NUM
-- CREATE SEQUENCE MATCH_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT MATCH_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MATCH_SEQ;


-- -- 구장 FIELD_NUM
-- CREATE SEQUENCE FIELD_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT FIELD_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence FIELD_SEQ;


-- -- 회원 MEMBER_NUM
-- CREATE SEQUENCE MEMBER_SEQ
--     START WITH 1000
--     INCREMENT BY 1;
-- --
-- SELECT MEMBER_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence MEMBER_SEQ;


-- -- 예약 RES_NUM
-- CREATE SEQUENCE RES_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT RES_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence RES_SEQ;


-- -- 결제 PAY_NUM
-- CREATE SEQUENCE PAY_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT PAY_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence PAY_SEQ;


-- -- 게시글 ARTICLE_NUM
-- CREATE SEQUENCE ARTICLE_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT ARTICLE_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence ARTICLE_SEQ;


-- -- 게시판 BOARD_NUM
-- CREATE SEQUENCE BOARD_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT BOARD_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence BOARD_SEQ;


-- -- 댓글 COMMENT_NUM
-- CREATE SEQUENCE COMMENT_SEQ
--     START WITH 1
--     INCREMENT BY 1;
-- --
-- SELECT COMMENT_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence COMMENT_SEQ;
































-- --               더미데이터                 ---------------------------------------------------------------------------

-- -- FIELD 테이블에 더미 데이터 삽입
-- -- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE, FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME, FIELD_DETAILADDRESS)
-- -- VALUES (FIELD_SEQ.nextval, '야구장', '789 Old Blvd', '101 New Plaza', '010-5678-1234', '120x60m', 'field2.jpg', 60000, 80000, TO_DATE('2024-05-18', 'YYYY-MM-DD'), '09:00', '21:00', '건물 8');

-- -- -- -- CLUB 테이블에 더미 데이터 삽입
-- -- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- -- VALUES (CLUB_SEQ.nextval, '야구 클럽', '커뮤니티 야구 클럽', 30, '중', '부산', '010-8765-4321');

-- -- 5월24일 생성한 CLUB 더미데이터
-- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- VALUES (CLUB_SEQ.nextval, '2클럽', '2번째 만든 풋살클럽', 50, '중상', '중랑구 상봉동', '010-2222-2222');
-- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- VALUES (CLUB_SEQ.nextval, '3클럽', '3번째 만든 풋살클럽', 20, '상', '노원구 중계동', '010-3333-3333');



-- -- RECORD_FC 테이블에 더미 데이터 삽입
-- -- INSERT INTO RECORD_FC (REC_NUM, REC_FID, REC_SCO, REC_DATE, CLUB_NUM)
-- -- VALUES (REC_SEQ.nextval, 'game456', '승', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);

-- -- RESERVATION 테이블에 더미 데이터 삽입
-- -- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM)
-- -- VALUES (RES_SEQ.nextval, TO_DATE('2024-06-02', 'YYYY-MM-DD'), 120000, '11:00', '13:00', 1002);

-- -- -- RESLIST 테이블에 더미 데이터 삽입
-- -- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM)
-- -- VALUES ('예약 정보', RES_SEQ.currval, FIELD_SEQ.currval);

-- -- -- PAYMENT 테이블에 더미 데이터 삽입
-- -- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM)
-- -- VALUES (PAY_SEQ.nextval, 'PayPal', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 120000, 'HSBC', RES_SEQ.currval);

-- -- MATCH 테이블에 더미 데이터 삽입
-- -- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- -- VALUES (MATCH_SEQ.nextval, '2024-06-02', '클럽 간의 토너먼트 경기', '16:00', 100, FIELD_SEQ.currval);

-- -- 5월 27일 구현을 위한 더미데이터 작성
-- -- 101클럽
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-04-24', '"424일클럽"과 경기예정 비올 수 있어요 우산 챙겨오세요', '12:00', 101, 1);
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-05-14', '"514일클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주세요', '13:00', 101, 3);
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-05-24', '"524클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주쇼', '13:00', 101, 3);
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-06-02', '"62클럽"과 경기예정 햇빛이 강하답니다 선크립 바르고 오세요', '16:00', 101, 1);
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- VALUES (MATCH_SEQ.nextval, '2024-07-01', '"71클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주세요', '13:00', 101, 3);

-- -- 102 클럽
-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM, MATCH_PHOTO)
-- VALUES (MATCH_SEQ.nextval, '2023-05-21', '"521일클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주세요', '13:00', 102, 2, 'canvas_1717075813446.png');

-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM, MATCH_PHOTO)
-- VALUES (MATCH_SEQ.nextval, '2024-05-28', '"521일클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주세요', '13:00', 102, 7, 'canvas_1717075813446.png');

-- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM, MATCH_PHOTO)
-- VALUES (MATCH_SEQ.nextval, '2025-05-21', '"521일클럽"과 경기예정 참여 못하는 사람은 미리 감독한테 말해주세요', '13:00', 102, 5, 'canvas_1717075813446.png');

-- commit;


-- -- MATCHBOARD 테이블에 더미 데이터 삽입
-- -- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM)
-- -- VALUES (MB_SEQ.nextval, '경기 일정', 'schedule.pdf', 100);

-- -- COMMUNITY 테이블에 더미 데이터 삽입
-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM)
-- -- VALUES (COMM_SEQ.nextval, '첫 커뮤니티 게시글', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);

-- -- 25일 테이블 변경으로 더미 삭제
-- TRUNCATE TABLE COMMUNITY;
-- -- 27일 삭제
-- TRUNCATE TABLE MATCH;

-- commit;


-- -- 24일 소통공간 더미 생성
-- -- 100번 클럽은 유저가 없어서 생성안함
-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- -- VALUES (COMM_SEQ.nextval, '100에서 보이는 첫번째 게시글', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100,);
-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- -- VALUES (COMM_SEQ.nextval, '100에서 보이는 첫번째 게시글', TO_DATE('2024-05-19', 'YYYY-MM-DD'), 100,);

-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- VALUES (COMM_SEQ.nextval, '101에서 보이는 첫번째 게시글', TO_DATE('2024-05-20', 'YYYY-MM-DD'), 101,1005);
-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- VALUES (COMM_SEQ.nextval, '101번 클럽 커뮤 두번째 게시글', TO_DATE('2024-05-22', 'YYYY-MM-DD'), 101,1006);

-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- VALUES (COMM_SEQ.nextval, '102번 클럽 커뮤 첫번째 게시글', TO_DATE('2024-05-21', 'YYYY-MM-DD'), 102,1007);
-- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM, MEMBER_NUM)
-- VALUES (COMM_SEQ.nextval, '102번 클럽 커뮤 두번째 게시글', TO_DATE('2024-05-23', 'YYYY-MM-DD'), 102,1008);

-- COMMIT;

-- 2팀 멤버 더미 업데이트
UPDATE member
SET club_num = '101'
WHERE member_name = '송성문';
commit;


-- -- 감독생성
-- UPDATE member
-- SET member_dir = 'Y'
-- WHERE member_name = '홍원기' ;

-- 	UPDATE member
-- 		SET club_num = 101
-- 		WHERE member_num = 1005 ;
    
--     COMMIT;


-- -- 3팀 멤버 더미 업데이트
-- UPDATE member
-- SET club_num = '102'
-- WHERE member_name = '양현종';

-- UPDATE member
-- SET club_num = '102'
-- WHERE member_name = '김도영';

commit;


-- BOARD 테이블에 더미 데이터 삽입
-- INSERT INTO BOARD (BOARD_NUM, BOARD_NAME, BOARD_INFO)
-- VALUES (BOARD_SEQ.nextval, '일반 토론', '다양한 주제에 대한 일반 토론 게시판입니다.');

-- ARTICLE 테이블에 더미 데이터 삽입
-- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM)
-- VALUES (ARTICLE_SEQ.nextval, '게시판에 오신 것을 환영합니다', '일반 토론 게시판의 첫 번째 게시글입니다.', SYSDATE, 0, 1002, BOARD_SEQ.currval);

-- COMMENTS 테이블에 더미 데이터 삽입
-- INSERT INTO COMMENTS (COMMENT_NUM, COMMENT_CONTENT, COMMENT_DATE, MEMBER_NUM)
-- VALUES (COMMENT_SEQ.nextval, '첫 번째 댓글입니다.', SYSDATE, 1002);





-- delete from community
-- where comm_num = 28;
























-- -- MEMBER 테이블의 모든 데이터 선택
-- SELECT * FROM MEMBER;

-- -- FIELD 테이블의 모든 데이터 선택
-- SELECT * FROM FIELD;

-- -- CLUB 테이블의 모든 데이터 선택
-- SELECT * FROM CLUB;

-- -- RESERVATION 테이블의 모든 데이터 선택
-- SELECT * FROM RESERVATION;

-- -- RESLIST 테이블의 모든 데이터 선택
-- SELECT * FROM RESLIST;

-- -- PAYMENT 테이블의 모든 데이터 선택
-- SELECT * FROM PAYMENT;

-- -- MATCH 테이블의 모든 데이터 선택
-- SELECT * FROM MATCH;

-- -- MATCHBOARD 테이블의 모든 데이터 선택
-- SELECT * FROM MATCHBOARD;

-- -- COMMUNITY 테이블의 모든 데이터 선택
-- SELECT * FROM COMMUNITY;

-- -- BOARD 테이블의 모든 데이터 선택
-- SELECT * FROM BOARD;































-- --------메모--------
-- -- REC_NO 속성 이름 NUM 변경
-- ALTER TABLE RECORD_FC RENAME COLUMN REC_NO TO REC_NUM;

-- SELECT * FROM RECORD_FC;

-- -- 이메일, 전화번호 등 UK 추가
-- ALTER TABLE MEMBER ADD (
--   CONSTRAINT MEMBER_EMAIL_UK UNIQUE(MEMBER_EMAIL),
--   CONSTRAINT MEMBER_PHONE_UK UNIQUE(MEMBER_PHONE)
-- );

-- -- 회원 테이블 감독여부(MEMBER_DIR) 속성 디폴트 'N' 추가
-- ALTER TABLE MEMBER
--     MODIFY MEMBER_DIR DEFAULT 'N';

-- -- 이미지 컬럼 추가
-- -- 멤버 테이블 등번호 컬럼 추가(등번호는 감독이 내팀에서 수정)

-- -- 전적 승패 CK
-- ALTER TABLE RECORD_FC ADD (
--     CONSTRAINT REC_SCO_CK CHECK (REC_SCO IN ('승', '패'))
-- );

-- -- 1. 테이블 구조 수정: REC_SCO 컬럼의 데이터 타입을 CHAR(3)으로 변경
-- ALTER TABLE RECORD_FC
--     MODIFY REC_SCO CHAR(3);

-- DELETE FROM RECORD_FC
-- WHERE REC_SCO = '3-2';

-- -- 매치 전략판사진 추가
-- ALTER TABLE MATCH
--     ADD MATCH_PHOTO VARCHAR2(50);

-- -- 클럽 클럽장 추가
-- ALTER TABLE CLUB
--     ADD CLUB_PRESIDENT VARCHAR2(20);







-- -- 클럽 더미데이터 업데이트
-- UPDATE CLUB
-- SET CLUB_NAME = '찰래',
--     CLUB_INFO = '백수들 모임 클럽',
--     CLUB_LOCATION = '노원구 공릉동',
--     CLUB_PHONE = '011-1111-1111',
--     CLUB_PRESIDENT = '백찰래'
-- WHERE CLUB_NUM = 100;




























-- -- 세션 정보 확인
-- SELECT
--     SID,
--     SERIAL#,
--     USERNAME,
--     STATUS,
--     MACHINE,
--     PROGRAM,
--     LAST_CALL_ET
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;



-- SELECT
--     *
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;


















-- select *
-- from club as of timestamp(systimestamp - interval '1440' minute)
-- where CLUB_NUM = 100;


=======
-- CREATE TABLE MEMBER (
--     MEMBER_NUM       NUMBER(10)  PRIMARY KEY,
--     MEMBER_ID        VARCHAR2(20)    NOT NULL,
--     MEMBER_PASSWD    VARCHAR2(20)    NOT NULL,
--     MEMBER_NAME      VARCHAR2(20)    NOT NULL,
--     MEMBER_DIR       CHAR(1),
--     MEMBER_PHONE     VARCHAR2(20)    NOT NULL,
--     MEMBER_EMAIL     VARCHAR2(20)    NOT NULL,
--     MEMBER_REGDATE   DATE            DEFAULT SYSDATE,
--     MEMBER_PHOTO     VARCHAR2(20)    DEFAULT 'img/teamlogo.jpg',
--     CLUB_NUM         NUMBER(10)
-- );
--
--
-- -- INSERT INTO MEMBER (MEMBER_NUM, MEMBER_ID, MEMBER_PASSWD, MEMBER_NAME, MEMBER_DIR, MEMBER_PHONE, MEMBER_EMAIL, MEMBER_REGDATE)
-- --             VALUES (1, 'admin', '1111', '관리자', 'N', '010-1111-1111', 'admin@gmail.com', SYSDATE);
--
--
--
-- -- DROP TABLE MEMBER;
--
--
-- CREATE TABLE FIELD (
-- 	FIELD_NUM	NUMBER(10)	PRIMARY KEY,
-- 	FIELD_NAME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_OLDADDRESS	VARCHAR2(50)	NULL,
-- 	FIELD_NEWADDRESS	VARCHAR2(50)	NULL,
-- 	FIELD_PHONE	VARCHAR2(20)	NOT NULL,
-- 	FIELD_REGDATE	DATE  DEFAULT SYSDATE,
-- 	FIELD_SIZE	VARCHAR2(20)	NOT NULL,
-- 	FIELD_PHOTO	VARCHAR2(50) DEFAULT 'img/teamlogo.jpg',
-- 	FIELD_DAYPRICE	NUMBER	NULL,
-- 	FIELD_ENDPRICE	NUMBER	NULL,
-- 	FIELD_PAYDATE	DATE	NULL,
-- 	FIELD_OPENTIME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_CLOSETIME	VARCHAR2(20)	NOT NULL,
-- 	FIELD_THUMBNAILS	VARCHAR2(50)	 DEFAULT 'img/teamlogo.jpg',
-- 	FIELD_DETAILADDRESS	VARCHAR2(50)	NULL
-- );
--
-- -- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE,FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME,FIELD_DETAILADDRESS)
-- --             VALUES (1, 'Football Field', '123 Old St', '456 New Ave', '010-1234-5678', '100x50m','field1.jpg', 50000, 70000, TO_DATE('2024-05-17', 'YYYY-MM-DD'), '08:00', '20:00','Building 7');
--
-- -- DROP TABLE FIELD;
--
-- CREATE TABLE CLUB (
-- 	CLUB_NUM	NUMBER(10)	PRIMARY KEY,
--     CLUB_NAME	VARCHAR2(20)	NOT NULL,
-- 	CLUB_INFO	VARCHAR2(100)	NULL,
-- 	CLUB_MEMBERCOUNT	NUMBER(20)	NOT NULL,
-- 	CLUB_PHOTO	VARCHAR2(50) DEFAULT 'teamlogo.jpg' ,
-- 	CLUB_LEVEL	VARCHAR2(20)	NOT NULL,
-- 	CLUB_REGDATE	DATE DEFAULT SYSDATE,
-- 	CLUB_LOCATION	VARCHAR2(20) NOT NULL,
-- 	CLUB_PHONE	VARCHAR2(20)	NOT NULL
-- );
--
--
-- -- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_PRESIDENT, CLUB_INFO, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- --         VALUES (CLUB_SEQ.NEXTVAL, '배고파', '민경찬', '배고픈 사람들의 풋살 클럽입니다.', '하', '서울시 노원구', '010-0000-0001');
--
-- -- DROP TABLE CLUB;
--
-- CREATE TABLE RECORD_FC (
-- 	REC_NO	NUMBER(10)	PRIMARY KEY,
-- 	REC_FID	VARCHAR2(20)	NOT NULL,
-- 	REC_SCO	VARCHAR2(20)	NULL,
-- 	REC_DATE DATE	NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO RECORD_FC (REC_NO, REC_FID, REC_SCO, REC_DATE, CLUB_NUM)
-- --        VALUES (1, 'game123', '3-2', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);
--
-- CREATE TABLE RESERVATION (
-- 	RES_NUM	NUMBER(10)	PRIMARY KEY,
-- 	RES_RESDATE	DATE	NOT NULL,
-- 	RES_PRICE	NUMBER(10)	NOT NULL,
-- 	RES_STARTTIME	VARCHAR2(20)	NOT NULL,
-- 	RES_ENDTIME	VARCHAR2(20)	NOT NULL,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM)
-- --        VALUES (1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 100000, '10:00', '12:00', 1);
--
-- CREATE TABLE RESLIST (
-- 	RESLIST_INFO	VARCHAR2(20)	NULL,
-- 	RES_NUM	NUMBER(10)	NOT NULL,
-- 	FIELD_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM)
-- --        VALUES ('Booking Info', 1, 1);
--
-- CREATE TABLE PAYMENT (
-- 	PAY_NUM	NUMBER(10)	PRIMARY KEY,
-- 	APP_PG	VARCHAR2(20)	NOT NULL,
-- 	PAY_DATE	DATE	NOT NULL,
-- 	PAY_PRICE	NUMBER(10)	NOT NULL,
-- 	PAY_BANK	VARCHAR2(20)	NULL,
-- 	RES_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM)
-- --     VALUES (1, 'KakaoPay', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 100000, 'KakaoBank', 1);
--
--     -- DROP TABLE PAYMENT;
--
-- CREATE TABLE MATCH (
-- 	MATCH_NUM	NUMBER(10)	PRIMARY KEY,
-- 	MATCH_DATE	VARCHAR2(20)	NOT NULL,
-- 	MATCH_INFO	VARCHAR2(200)	NULL,
-- 	MATCH_TIME	VARCHAR2(20)	NOT NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL,
-- 	FIELD_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- --     VALUES (1, '2024-06-01', 'Friendly match between local teams', '15:00', 1, 1);
--
--
-- CREATE TABLE MATCHBOARD (
-- 	MB_NUM	NUMBER(10)	PRIMARY KEY,
-- 	MB_NAME	VARCHAR2(20)	NOT NULL,
-- 	MB_FILE	VARCHAR2(50)	NOT NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM)
-- --        VALUES (1, 'Match Schedule', 'schedule.pdf', 1);
--
--
-- CREATE TABLE COMMUNITY (
-- 	COMM_NUM	NUMBER(10)	PRIMARY KEY,
-- 	COMM_CONTENT	VARCHAR2(30)	NULL,
-- 	COMM_DATE	DATE	NULL,
-- 	CLUB_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM)
-- --        VALUES (1, 'First community post', TO_DATE('2024-05-17', 'YYYY-MM-DD'), 1);
--
--
-- CREATE TABLE BOARD (
-- 	BOARD_NUM	NUMBER(10)	PRIMARY KEY,
-- 	BOARD_NAME	VARCHAR2(30)	NOT NULL,
-- 	BOARD_INFO	VARCHAR2(500)	NULL
-- );
--
-- -- INSERT INTO BOARD ( BOARD_NUM, BOARD_NAME, BOARD_INFO)
-- --        VALUES (1, 'General Discussion', 'This board is for general discussion about various topics.');
--
-- CREATE TABLE ARTICLE (
-- 	ARTICLE_NUM	NUMBER(10)	PRIMARY KEY,
-- 	ARTICLE_TITLE	VARCHAR2(100)	NOT NULL,
-- 	ARTICLE_CONTENT	VARCHAR2(500)	NOT NULL,
-- 	ARTICLE_DATE	DATE DEFAULT SYSDATE,
-- 	ARTICLE_HITCOUNT	NUMBER(20)	DEFAULT 0,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL,
-- 	BOARD_NUM	NUMBER(10)	NOT NULL
-- );
--
-- -- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM)
-- --        VALUES (1, 'Welcome to the Board', 'This is the first article in the general discussion board.', SYSDATE, 0, 1, 1);
--
--
-- CREATE TABLE COMMENTS (
-- 	COMMENT_NUM	NUMBER(10)	PRIMARY KEY,
-- 	COMMENT_CONTENT	VARCHAR2(500)	NOT NULL,
-- 	COMMENT_DATE	DATE	DEFAULT SYSDATE,
-- 	MEMBER_NUM	NUMBER(10)	NOT NULL
-- );
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- --          Other Key           -------------------------------------------------------------------------------------------------------------------
-- ALTER TABLE RECORD_FC
--   ADD(
--     CONSTRAINT REC_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );
--
-- ALTER TABLE COMMUNITY
--   ADD(
--     CONSTRAINT COMM_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );
--
-- ALTER TABLE MATCHBOARD
--   ADD(
--     CONSTRAINT MB_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM)
-- );
--
-- ALTER TABLE MATCH
--   ADD(
--     CONSTRAINT MATCH_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
--     CONSTRAINT MATCH_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );
--
-- ALTER TABLE MEMBER
--   ADD(
--     CONSTRAINT MEMBER_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
-- 		-- 감독여부 CK
--     CONSTRAINT MEMBER_DIR_CK CHECK (MEMBER_DIR IN ('Y', 'N'))
-- );
--
-- ALTER TABLE RESERVATION
--   ADD(
--     CONSTRAINT RES_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );
--
-- ALTER TABLE RESLIST
--   ADD(
--     CONSTRAINT RESLIST_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM),
--     CONSTRAINT RESLIST_FIELD_NUM_FK FOREIGN KEY(FIELD_NUM) REFERENCES FIELD(FIELD_NUM)
-- );
--
-- ALTER TABLE PAYMENT
--   ADD(
--     CONSTRAINT PAY_RES_NUM_FK FOREIGN KEY(RES_NUM) REFERENCES RESERVATION(RES_NUM)
-- );
--
-- ALTER TABLE ARTICLE
--   ADD(
--     CONSTRAINT ARTICLE_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM),
--     CONSTRAINT ARTICLE_BOARD_NUM_FK FOREIGN KEY(BOARD_NUM) REFERENCES BOARD(BOARD_NUM)
-- );
--
-- ALTER TABLE COMMENTS
--   ADD(
--     CONSTRAINT COMMENTS_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM)
-- );
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- -- --      시퀀스                    -------------------------------------------------------------------------
-- -- -- GRANT CREATE SEQUENCE
-- -- -- TO CHALLAE;
--
-- -- -- 클럽전적 REC_NO
-- -- CREATE SEQUENCE REC_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT REC_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence REC_SEQ;
--
--
-- -- -- 커뮤니티 COMM_NUM
-- -- CREATE SEQUENCE COMM_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT COMM_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence COMM_SEQ;
--
--
-- -- -- 전략판 MB_NUM
-- -- CREATE SEQUENCE MB_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT MB_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence MB_SEQ;
--
-- -- -- 클럽 CLUB_NUM
-- -- CREATE SEQUENCE CLUB_SEQ
-- --   START WITH 107
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT CLUB_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence CLUB_SEQ;
--
--
-- -- -- 매치 MATCH_NUM
-- -- CREATE SEQUENCE MATCH_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT MATCH_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence MATCH_SEQ;
--
--
-- -- -- 구장 FIELD_NUM
-- -- CREATE SEQUENCE FIELD_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT FIELD_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence FIELD_SEQ;
--
--
-- -- -- 회원 MEMBER_NUM
-- -- CREATE SEQUENCE MEMBER_SEQ
-- --   START WITH 1020
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT MEMBER_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence MEMBER_SEQ;
--
--
-- -- -- 예약 RES_NUM
-- -- CREATE SEQUENCE RES_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT RES_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence RES_SEQ;
--
--
-- -- -- 결제 PAY_NUM
-- -- CREATE SEQUENCE PAY_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT PAY_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence PAY_SEQ;
--
--
-- -- -- 게시글 ARTICLE_NUM
-- -- CREATE SEQUENCE ARTICLE_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT ARTICLE_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence ARTICLE_SEQ;
--
--
-- -- -- 게시판 BOARD_NUM
-- -- CREATE SEQUENCE BOARD_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT BOARD_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence BOARD_SEQ;
--
--
-- -- -- 댓글 COMMENT_NUM
-- -- CREATE SEQUENCE COMMENT_SEQ
-- --   START WITH 1
-- --   INCREMENT BY 1;
-- -- --
-- -- SELECT COMMENT_SEQ.nextval
-- -- from DUAL;
-- -- --
-- -- drop sequence COMMENT_SEQ;
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- --               더미데이터                 ---------------------------------------------------------------------------
--
-- -- FIELD 테이블에 더미 데이터 삽입
-- -- INSERT INTO FIELD (FIELD_NUM, FIELD_NAME, FIELD_OLDADDRESS, FIELD_NEWADDRESS, FIELD_PHONE, FIELD_SIZE, FIELD_PHOTO, FIELD_DAYPRICE, FIELD_ENDPRICE, FIELD_PAYDATE, FIELD_OPENTIME, FIELD_CLOSETIME, FIELD_DETAILADDRESS)
-- -- VALUES (FIELD_SEQ.nextval, '야구장', '789 Old Blvd', '101 New Plaza', '010-5678-1234', '120x60m', 'field2.jpg', 60000, 80000, TO_DATE('2024-05-18', 'YYYY-MM-DD'), '09:00', '21:00', '건물 8');
--
-- -- -- -- CLUB 테이블에 더미 데이터 삽입
-- -- INSERT INTO CLUB (CLUB_NUM, CLUB_NAME, CLUB_INFO, CLUB_MEMBERCOUNT, CLUB_LEVEL, CLUB_LOCATION, CLUB_PHONE)
-- -- VALUES (CLUB_SEQ.nextval, '야구 클럽', '커뮤니티 야구 클럽', 30, '중', '부산', '010-8765-4321');
--
-- -- RECORD_FC 테이블에 더미 데이터 삽입
-- -- INSERT INTO RECORD_FC (REC_NUM, REC_FID, REC_SCO, REC_DATE, CLUB_NUM)
-- -- VALUES (REC_SEQ.nextval, 'game456', '승', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);
--
-- -- RESERVATION 테이블에 더미 데이터 삽입
-- -- INSERT INTO RESERVATION (RES_NUM, RES_RESDATE, RES_PRICE, RES_STARTTIME, RES_ENDTIME, MEMBER_NUM)
-- -- VALUES (RES_SEQ.nextval, TO_DATE('2024-06-02', 'YYYY-MM-DD'), 120000, '11:00', '13:00', 1002);
--
-- -- -- RESLIST 테이블에 더미 데이터 삽입
-- -- INSERT INTO RESLIST (RESLIST_INFO, RES_NUM, FIELD_NUM)
-- -- VALUES ('예약 정보', RES_SEQ.currval, FIELD_SEQ.currval);
--
-- -- -- PAYMENT 테이블에 더미 데이터 삽입
-- -- INSERT INTO PAYMENT (PAY_NUM, APP_PG, PAY_DATE, PAY_PRICE, PAY_BANK, RES_NUM)
-- -- VALUES (PAY_SEQ.nextval, 'PayPal', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 120000, 'HSBC', RES_SEQ.currval);
--
-- -- MATCH 테이블에 더미 데이터 삽입
-- -- INSERT INTO MATCH (MATCH_NUM, MATCH_DATE, MATCH_INFO, MATCH_TIME, CLUB_NUM, FIELD_NUM)
-- -- VALUES (MATCH_SEQ.nextval, '2024-06-02', '클럽 간의 토너먼트 경기', '16:00', 100, FIELD_SEQ.currval);
--
-- -- MATCHBOARD 테이블에 더미 데이터 삽입
-- -- INSERT INTO MATCHBOARD (MB_NUM, MB_NAME, MB_FILE, CLUB_NUM)
-- -- VALUES (MB_SEQ.nextval, '경기 일정', 'schedule.pdf', 100);
--
-- -- COMMUNITY 테이블에 더미 데이터 삽입
-- -- INSERT INTO COMMUNITY (COMM_NUM, COMM_CONTENT, COMM_DATE, CLUB_NUM)
-- -- VALUES (COMM_SEQ.nextval, '첫 커뮤니티 게시글', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 100);
--
-- -- BOARD 테이블에 더미 데이터 삽입
-- -- INSERT INTO BOARD (BOARD_NUM, BOARD_NAME, BOARD_INFO)
-- -- VALUES (BOARD_SEQ.nextval, '일반 토론', '다양한 주제에 대한 일반 토론 게시판입니다.');
--
-- -- ARTICLE 테이블에 더미 데이터 삽입
-- -- INSERT INTO ARTICLE (ARTICLE_NUM, ARTICLE_TITLE, ARTICLE_CONTENT, ARTICLE_DATE, ARTICLE_HITCOUNT, MEMBER_NUM, BOARD_NUM)
-- -- VALUES (ARTICLE_SEQ.nextval, '게시판에 오신 것을 환영합니다', '일반 토론 게시판의 첫 번째 게시글입니다.', SYSDATE, 0, 1002, BOARD_SEQ.currval);
--
-- -- COMMENTS 테이블에 더미 데이터 삽입
-- -- INSERT INTO COMMENTS (COMMENT_NUM, COMMENT_CONTENT, COMMENT_DATE, MEMBER_NUM)
-- -- VALUES (COMMENT_SEQ.nextval, '첫 번째 댓글입니다.', SYSDATE, 1002);
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- -- MEMBER 테이블의 모든 데이터 선택
-- SELECT * FROM MEMBER;
--
-- -- FIELD 테이블의 모든 데이터 선택
-- SELECT * FROM FIELD;
--
-- -- CLUB 테이블의 모든 데이터 선택
-- SELECT * FROM CLUB;
--
-- -- RESERVATION 테이블의 모든 데이터 선택
-- SELECT * FROM RESERVATION;
--
-- -- RESLIST 테이블의 모든 데이터 선택
-- SELECT * FROM RESLIST;
--
-- -- PAYMENT 테이블의 모든 데이터 선택
-- SELECT * FROM PAYMENT;
--
-- -- MATCH 테이블의 모든 데이터 선택
-- SELECT * FROM MATCH;
--
-- -- MATCHBOARD 테이블의 모든 데이터 선택
-- SELECT * FROM MATCHBOARD;
--
-- -- COMMUNITY 테이블의 모든 데이터 선택
-- SELECT * FROM COMMUNITY;
--
-- -- BOARD 테이블의 모든 데이터 선택
-- SELECT * FROM BOARD;
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- --------메모--------
-- -- REC_NO 속성 이름 NUM 변경
-- ALTER TABLE RECORD_FC RENAME COLUMN REC_NO TO REC_NUM;
--
-- SELECT * FROM RECORD_FC;
--
-- -- 이메일, 전화번호 등 UK 추가
-- ALTER TABLE MEMBER ADD (
--   CONSTRAINT MEMBER_EMAIL_UK UNIQUE(MEMBER_EMAIL),
--   CONSTRAINT MEMBER_PHONE_UK UNIQUE(MEMBER_PHONE)
-- );
--
-- -- 회원 테이블 감독여부(MEMBER_DIR) 속성 디폴트 'N' 추가
-- ALTER TABLE MEMBER
-- MODIFY MEMBER_DIR DEFAULT 'N';
--
-- -- 이미지 컬럼 추가
-- -- 멤버 테이블 등번호 컬럼 추가(등번호는 감독이 내팀에서 수정)
--
-- -- 전적 승패 CK
-- ALTER TABLE RECORD_FC ADD (
--     CONSTRAINT REC_SCO_CK CHECK (REC_SCO IN ('승', '패'))
-- );
--
-- -- 1. 테이블 구조 수정: REC_SCO 컬럼의 데이터 타입을 CHAR(3)으로 변경
-- ALTER TABLE RECORD_FC
-- MODIFY REC_SCO CHAR(3);
--
-- DELETE FROM RECORD_FC
-- WHERE REC_SCO = '3-2';
--
-- -- 매치 전략판사진 추가
-- ALTER TABLE MATCH
-- ADD MATCH_PHOTO VARCHAR2(50);
--
-- -- 클럽 클럽장 추가
-- ALTER TABLE CLUB
-- ADD CLUB_PRESIDENT VARCHAR2(20);
--
-- -- 클럽 더미데이터 업데이트
-- UPDATE CLUB
-- SET CLUB_NAME = '찰래',
--     CLUB_INFO = '백수들 모임 클럽',
--     CLUB_LOCATION = '노원구 공릉동',
--     CLUB_PHONE = '011-1111-1111',
--     CLUB_PRESIDENT = '백찰래'
-- WHERE CLUB_NUM = 100;
--
-- -- 필드 테이블 데이터 수정
-- UPDATE FIELD
-- SET
--     FIELD_NAME = '아산 인주점',
--     FIELD_NEWADDRESS = '아산시 인주면 아산만로 1500',
--     FIELD_PHONE = '010-7221-1904',
--     FIELD_SIZE = '20X40',
--     FIELD_PHOTO = 'siheung.jpg',
--     FIELD_DAYPRICE = 80000,
--     FIELD_ENDPRICE = 90000,
--     FIELD_OPENTIME = '06:00',
--     FIELD_CLOSETIME = '24:00'
-- WHERE
--     FIELD_NUM = 11;
--
-- -- 클럽 테이블 CLUB_MEMBERCOUNT 속성 수정
-- ALTER TABLE CLUB
-- MODIFY (CLUB_MEMBERCOUNT NUMBER(20) DEFAULT 1);
--
-- -- 클럽 테이블 CLUB_PRESIDENT 속성 수정
-- ALTER TABLE CLUB
-- MODIFY (CLUB_PRESIDENT VARCHAR2(20) NOT NULL);
--
-- -- 클럽 테이블 CLUB_STOREDPHOTO 속성 추가
-- ALTER TABLE CLUB
-- ADD (CLUB_STOREDPHOTO VARCHAR2(50));
--
-- -- 클럽 테이블 CLUB_LOCATION 속성 수정
-- ALTER TABLE CLUB
-- MODIFY (CLUB_LOCATION VARCHAR2(100));
--
-- ALTER TABLE CLUB
-- MODIFY (CLUB_PHOTO VARCHAR2(100));
--
-- ALTER TABLE MEMBER
-- MODIFY (MEMBER_PHOTO VARCHAR2(100));
--
-- -- 멤버 테이블 데이터 수정
-- UPDATE MEMBER
-- SET
--     club_num = 106,
--     member_dir = 'Y'
-- WHERE
--     member_id = 'gogo';
--
--
--
--
-- commit;
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
-- -- 세션 정보 확인
-- SELECT
--     SID,
--     SERIAL#,
--     USERNAME,
--     STATUS,
--     MACHINE,
--     PROGRAM,
--     LAST_CALL_ET
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;
--
--
--
-- SELECT
--     *
-- FROM
--     V$SESSION
-- WHERE
--     USERNAME IS NOT NULL;
--
--
--
--
--
--
--
--
--
--
--
-- commit;

-- UPDATE MEMBER
-- SET CLUB_NUM = #{clubNum}
-- WHERE MEMBER_NUM = #{memberNum};

-- SELECT * FROM MEMBER;


-- 클럽 더미데이터 업데이트
-- UPDATE MEMBER
-- SET CLUB_NUM = '현재 클럽 번호 부여'
-- WHERE MEMBER_NUM = '현재 로그인 멤버 번호'

commit;


-- SELECT m.MEMBER_NUM, m.MEMBER_NAME, m.MEMBER_PHONE, m.MEMBER_EMAIL, m.MEMBER_STOREDPHOTO, c.CLUB_NUM, c.CLUB_NAME, c.CLUB_PRESIDENT
-- FROM MEMBER m
-- JOIN CLUB c ON m.CLUB_NUM = c.CLUB_NUM
-- WHERE m.CLUB_NUM = {clubNum} AND m.MEMBER_NAME = c.CLUB_PRESIDENT

SELECT * from member;

-- CREATE TABLE CLUBJOINLIST (
--     JOIN_NUM          NUMBER(10)      PRIMARY KEY,

--     CLUB_NUM         NUMBER(10),
--     MEMBER_NUM        NUMBER(10)    NOT NULL,

--     JOIN_MEMBERLEVEL VARCHAR2(10),
--     JOIN_MEMBERINFO VARCHAR2(100),
--     JOIN_DATE        DATE            DEFAULT SYSDATE,
--     JOIN_STATUS      VARCHAR2(10)     DEFAULT '대기'
-- );

-- ALTER TABLE CLUBJOINLIST ADD(
-- CONSTRAINT JOIN_CLUB_NUM_FK FOREIGN KEY(CLUB_NUM) REFERENCES CLUB(CLUB_NUM),
--     CONSTRAINT JOIN_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM) REFERENCES MEMBER(MEMBER_NUM),
--     CONSTRAINT JOIN_STATUS_CHECK CHECK (JOIN_STATUS IN ('승인', '대기', '거절'))
-- );


-- 조인
-- CREATE SEQUENCE JOIN_SEQ
--   START WITH 1
--   INCREMENT BY 1;
-- --
-- SELECT JOIN_SEQ.nextval
-- from DUAL;
-- --
-- drop sequence JOIN_SEQ;


-- ALTER TABLE CLUBJOINLIST
-- MODIFY (
--     JOIN_MEMBERNAME      VARCHAR2(20)    NOT NULL,
--     JOIN_MEMBERPHONE     VARCHAR2(50)    NOT NULL,
--     JOIN_MEMBEREMAIL     VARCHAR2(50)    NOT NULL,
--     JOIN_MEMBERPHOTO     VARCHAR2(100)
-- );

-- SELECT * FROM MEMBER WHERE CLUB_NUM IS NULL;

-- SELECT * from member WHERE MEMBER_DIR = 'Y';





-- UPDATE member
-- SET club_num = NULL
-- WHERE MEMBER_NUM = 1044;

-- UPDATE CLUBJOINLIST
-- SET JOIN_STATUS = '대기'
-- WHERE CLUB_NUM = 103;

SELECT * from MEMBER WHERE member_num = 1044;
SELECT * from MEMBER WHERE member_num = 1005;

COMMIT;

SELECT * FROM CLUBJOINLIST;






-- 트리거 // 멤버수 자동 업데이트
-- CREATE OR REPLACE TRIGGER after_member_update
-- AFTER UPDATE ON member
-- FOR EACH ROW
-- BEGIN
--     -- 이전 club_num이 NULL이 아니었고, 값이 변경되었을 때만 감소
--     IF :OLD.club_num IS NOT NULL AND (:OLD.club_num != :NEW.club_num OR :NEW.club_num IS NULL) THEN
--         UPDATE club
--         SET club_membercount = club_membercount - 1
--         WHERE club_num = :OLD.club_num;
--     END IF;

--     -- 새로운 club_num이 NULL이 아니고, 값이 변경되었을 때만 증가
--     IF :NEW.club_num IS NOT NULL AND (:OLD.club_num != :NEW.club_num OR :OLD.club_num IS NULL) THEN
--         UPDATE club
--         SET club_membercount = club_membercount + 1
--         WHERE club_num = :NEW.club_num;
--     END IF;
-- END;
>>>>>>> 1776326671b77b631dcaf6d8dc377d02609568b6
