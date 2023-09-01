USE WEEK01;
	
-- 회원 테이블 생성
CREATE TABLE MEMBER(
	id VARCHAR(16) NOT NULL,
	pw VARCHAR(330) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(13),
	regdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	POINT INT DEFAULT 0,
	PRIMARY KEY (id));

-- 회원 더미 데이터 삽입
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '관리자', 'admin@week.com', '010-1004-1004');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('kim', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '김영훈', 'kim@week.com', '010-7979-2848');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('lee', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '이주연', 'lee@week.com', '010-2424-2424');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES
('park', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '박정우', 'park@week.com', '010-2848-7979');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('so', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '소정환', 'so@week.com', '010-2222-1234');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES 
('yoon', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '윤도운', 'yoon@week.com', '010-3333-3333');

-- 공지사항 테이블 생성
CREATE TABLE board(
	bno INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	author VARCHAR(16),
	resdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	cnt INT DEFAULT 0);

-- 공지사항 더미 데이터 삽입
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 1", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 2", "WeeK 공지사항 글 내용2입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 3", "WeeK 공지사항 글 내용3입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 4", "WeeK 공지사항 글 내용4입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 5", "WeeK 공지사항 글 내용5입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 6", "WeeK 공지사항 글 내용6입니다.", "admin" );

INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 7", "WeeK 공지사항 글 내용7입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 8", "WeeK 공지사항 글 내용8입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 9", "WeeK 공지사항 글 내용9입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 10", "WeeK 공지사항 글 내용10입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 11", "WeeK 공지사항 글 내용11입니다.", "admin" );

INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 12", "WeeK 공지사항 글 내용12입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 13", "WeeK 공지사항 글 내용13입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 14", "WeeK 공지사항 글 내용14입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 15", "WeeK 공지사항 글 내용15입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 16", "WeeK 공지사항 글 내용16입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 17", "WeeK 공지사항 글 내용17입니다.", "admin" );	

-- 인재채용 테이블 생성
CREATE TABLE weekcrew(
	wid INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	content VARCHAR(1200) NOT NULL,
	content2 VARCHAR(1200) NOT NULL
);

-- 인재채용 더미 데이터 삽입
INSERT INTO weekcrew(name, email, content, content2) VALUES ('김지원','kimji@week.com','끊임없이 도전하며 회사의 성장에 기여하고 싶습니다. 도전은 변화와 혁신을 이끌고, 회사와 저의 성장으로 이어지기 때문입니다. 이에 가장 부합하는 회사가 ‘WEEK’라고 판단하여 지원했습니다.','끊임없이 도전하며 회사의 성장에 기여하고 싶습니다. 도전은 변화와 혁신을 이끌고, 회사와 저의 성장으로 이어지기 때문입니다. 이에 가장 부합하는 회사가 ‘WEEK’라고 판단하여 지원했습니다.');
INSERT INTO weekcrew(name, email, content, content2) VALUES ('이지원','leeji@week.com','제가 회사를 선택하는 기준은 끊임없이 혁신하고 가치창조를 하며 성장 가능성이 있는 기업인가? 입니다. 4차 산업혁명 시대를 맞이하여 기업이 현재 성과에 안주하고 혁신을 멈춘다면 자연스럽게 도태될 것입니다. WEEK과 함께 성장하고 싶습니다.','제가 회사를 선택하는 기준은 끊임없이 혁신하고 가치창조를 하며 성장 가능성이 있는 기업인가? 입니다. 4차 산업혁명 시대를 맞이하여 기업이 현재 성과에 안주하고 혁신을 멈춘다면 자연스럽게 도태될 것입니다. WEEK과 함께 성장하고 싶습니다.');
INSERT INTO weekcrew(name, email, content, content2) VALUES ('강지원','kangji@week.com','기업을 선택할 때 상호 존중 하에 본인의 역량을 얼마나 발휘할 수 있는가?에 대해 항상 고민합니다. 그 이유는 기업의 임직원 분들이 상호 존중의 정도에 따라서 역량을 발휘할 수 있는 것은 천지 차이이기 때문입니다. 만약 서로가 존중하지 않고 소통이 결여된 곳이라면 본인의 역량을 제한적으로 발휘할 것이고 서로의 눈치를 보며 그 기업은 더 나아가 발전할 수 없을 것입니다. WEEK에서 더욱 성장하고 싶습니다.','기업을 선택할 때 상호 존중 하에 본인의 역량을 얼마나 발휘할 수 있는가?에 대해 항상 고민합니다. 그 이유는 기업의 임직원 분들이 상호 존중의 정도에 따라서 역량을 발휘할 수 있는 것은 천지 차이이기 때문입니다. 만약 서로가 존중하지 않고 소통이 결여된 곳이라면 본인의 역량을 제한적으로 발휘할 것이고 서로의 눈치를 보며 그 기업은 더 나아가 발전할 수 없을 것입니다. WEEK에서 더욱 성장하고 싶습니다.');
INSERT INTO weekcrew(name, email, content, content2) VALUES ('최지원','choiji@week.com','WEEK에 입사하여 더욱 깨끗하고 올바른 조직문화를 만들어 임직원 분들이 일하기 좋은 환경을 만들고 회사에 기여하고 싶기 때문입니다. 저는 회사를 지원할 때 선택하는 기준으로 역량을 십분 발휘할 수 있고 저를 통해 회사가 더욱 성장하고 발전할 수 있는지를 고려합니다. WEEK의 인사 직무는 타 부서를 위한 또 다른 고객센터라고 생각합니다. ','WEEK에 입사하여 더욱 깨끗하고 올바른 조직문화를 만들어 임직원 분들이 일하기 좋은 환경을 만들고 회사에 기여하고 싶기 때문입니다. 저는 회사를 지원할 때 선택하는 기준으로 역량을 십분 발휘할 수 있고 저를 통해 회사가 더욱 성장하고 발전할 수 있는지를 고려합니다. WEEK의 인사 직무는 타 부서를 위한 또 다른 고객센터라고 생각합니다. ');

-- 1:1 문의 테이블 생성
CREATE TABLE qna(qno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(1000),
author VARCHAR(16),
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
cnt INT DEFAULT 0,
lev INT DEFAULT 0,	-- 질문(0), 답변(1)
par INT,		-- 부모 글번호 -> 질문(자신 레코드의 qno), 답변(질문의 글번호)
FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE 
);

-- 1:1 문의 더미 데이터 삽입
INSERT INTO qna(title, content, author, lev) VALUES('질문1', '질문1 내용입니다.', 'kim', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문2', '질문2 내용입니다.', 'lee', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문3', '질문3 내용입니다.', 'park', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문4', '질문4 내용입니다.', 'so', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문5', '질문5 내용입니다.', 'yoon', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문6', '질문6 내용입니다.', 'kim', 0);
UPDATE qna SET par=qno WHERE lev = 0;

INSERT INTO qna(title, content, author, lev, par) VALUES('질문1 답변', '답변 내용', 'park', 1, 1);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문2 답변', '답변 내용', 'so', 1, 2);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문3 답변', '답변 내용', 'admin', 1, 3);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문4 답변', '답변 내용', 'admin', 1, 4);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문5 답변', '답변 내용', 'admin', 1, 5);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문6 답변', '답변 내용', 'admin', 1, 6);

-- qnalist 뷰 생성
CREATE VIEW qnalist AS (SELECT a.qno AS qno, a.title AS title, a.content AS content, 
a.author AS author, a.resdate AS resdate, a.cnt AS cnt, a.lev AS lev, a.par AS par, b.name AS NAME
FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

-- 자주하는 질문 테이블 생성
CREATE TABLE faq(fno INT PRIMARY KEY AUTO_INCREMENT,
question VARCHAR(200) NOT NULL,
answer VARCHAR(1000),
cnt INT DEFAULT 0);

-- 자주하는 질문 더미 데이터 삽입
INSERT INTO faq (fno, question, answer, cnt) VALUES
	(1, '1. 수업에 필요한 교사용 자료(DVD, PPT 등)는 어디에서 다운받을 수 있나요?', '교사용 자료 이용을 원하시는 선생님들을 위해 무료 온라인 교수 학습 지원 사이트인 T셀파(tsherpa.co.kr)을 운영하고 있습니다. T셀파 사이트에서 별도로 회원 가입을 하신 후, GPKI 인증을 하시면 다양한 자료를 이용하실 수 있습니다.\r\n\r\n인증을 받지 않으신 선생님은 서비스 이용에 제한이 있으며, 자세한 문의 사항은 T셀파 고객센터 1577-7609로 문의해 주시기 바랍니다.', 0),
	(2, '2. 학습 교재(정오표, 정답 및 해설 등)의 관련 자료를 다운받고 싶어요.', '고객만족센터 > 자료실에서 학습 교재 관련 자료를 다운받을 수 있습니다.', 0),
	(3, '3. 교재에 대한 문의 사항이나 의견이 있어요.', '고객만족센터 > 1:1 문의에서 문의 사항을 남겨 주시면 과목별 담당자의 답변을 받아보실 수 있습니다.', 0),
	(4, '4. 교과서, 지도서는 어디에서 구입할 수 있나요?', '천재교과서 발행 교과서 및 지도서는 천재교과서 쇼핑몰 홈페이지(mall.chunjaetext.co.kr)에서\r\n\r\n천재교육 발행 교과서 및 지도서는 천재교육 쇼핑몰(mall.chunjae.co.kr)에서 구매하실 수 있습니다.\r\n\r\n한국검인정교과서협회(www.ktbook.com)에서도 구매하실 수 있습니다.\r\n\r\n', 0),
	(5, '5. 자습서, 평가문제집을 구매하고 싶어요.', '자습서와 평가문제집은 온라인에서 판매하지 않습니다.\r\n\r\n주변의 가까운 서점에서 구매하시기 바랍니다.', 0);

-- 언론보도 테이블 생성
CREATE TABLE masscom (
mno INT(10) PRIMARY key AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
link VARCHAR(1000) NOT NULL,
resdate VARCHAR(20) NOT NULL
);

-- 언론보도 더미 데이터 삽입
INSERT into masscom(title, link, resdate) VALUES('"초등 어휘력 올려야 문해력도 UP" 스마트인강 밀크티 북클럽 주목','http://www.gpkorea.com/news/articleView.html?idxno=103734','2023-08-06');
INSERT INTO masscom(title, link, resdate) VALUES('고등인강으로 대비하는 2024학년도 수능, 개념부터 기출까지 한 번에','http://www.fntoday.co.kr/news/articleView.html?idxno=298230','2023-08-06');
INSERT INTO masscom(title, link, resdate) VALUES('‘2학기 내신성적은 중등인강으로’…밀크티 중학, 8월 맞이 선물 이벤트 진행','http://www.it-b.co.kr/news/articleView.html?idxno=69659','2023-08-01');
INSERT INTO masscom(title, link, resdate) VALUES('천재교육 해법문학, 수능 국어 대비 고등 문학 문제집으로 각광','http://edu.donga.com/?p=article&ps=view&at_no=20230731142247991425','2023-08-01');
INSERT INTO masscom(title, link, resdate) VALUES('박정과 천재교과서 대표 "AI 교과서로 전환은 교육혁신 모멘텀 될 것"','https://www.hankyung.com/society/article/2023073025011','2023-07-30');
INSERT INTO masscom(title, link, resdate) VALUES('중등 인강 밀크티 AI 자동 자막 서비스, 2학기 내신 대비 오픈','http://edu.donga.com/?p=article&ps=view&at_no=20230728162157950350','2023-07-28');
INSERT INTO masscom(title, link, resdate) VALUES('수 개념 원리부터 깨닫는 유아 수학, 맘편한 스마트학습에서','http://kids.donga.com/?ptype=article&no=20230721174222313123','2023-07-23');
INSERT INTO masscom(title, link, resdate) VALUES('중등인강 밀크티, 신규 TVCF 공개! 교과서 만드는 회사가 인강을?','https://www.dt.co.kr/contents.html?article_no=2023072102109923083004&ref=naver','2023-07-22');
INSERT INTO masscom(title, link, resdate) VALUES('천재교육, ‘경상북도교육청 에듀테크 매칭플레이스’ 참가','https://edu.chosun.com/site/data/html_dir/2023/07/20/2023072001793.html','2023-07-21');
INSERT INTO masscom(title, link, resdate) VALUES('천재교과서, 교재 400권 갖춘 앱 ‘디북’ iOS버전 출시','https://news.mtn.co.kr/news-detail/2023071808574643108','2023-07-19');

-- 1:1 문의 게시판 댓글 테이블 생성
CREATE TABLE comment(
	cno INT PRIMARY KEY AUTO_INCREMENT,
	qno INT,
	author VARCHAR(16),
   resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   content VARCHAR(200),
   FOREIGN KEY(qno) REFERENCES qna(qno) ON DELETE CASCADE
);

-- 댓글 더미 데이터 삽입
INSERT INTO comment(qno, author, content) VALUES(3, 'kim', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(4, 'lee', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(5, 'park', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(6, 'so', '테스트용 댓글');
INSERT INTO comment(qno, author, content) VALUES(12, 'yoon', '테스트용 댓글');

COMMIT;