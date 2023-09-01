CREATE TABLE board(
	bno INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	author VARCHAR(16),
	resdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	cnt INT DEFAULT 0);
	
CREATE TABLE MEMBER(
	id VARCHAR(16) NOT NULL,
	pw VARCHAR(330) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(13),
	regdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	POINT INT DEFAULT 0,
	PRIMARY KEY (id));

CREATE TABLE weekcrew(
	wid INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(100) NOT NULL,
	emaiweekcrewl VARCHAR(100) NOT NULL,
	content VARCHAR(1200) NOT NULL,
	content2 VARCHAR(1200) NOT NULL
);

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


INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 1", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 2", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 3", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 4", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 5", "WeeK 공지사항 글 내용1입니다.", "admin" );
INSERT INTO board (title, content, author) VALUES ("공지사항 게시글 6", "WeeK 공지사항 글 내용1입니다.", "admin" );

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

COMMIT;


insert into weekcrew(name, email, content, content2) VALUES ('김지원','kimji@week.com','끊임없이 도전하며 회사의 성장에 기여하고 싶습니다. 도전은 변화와 혁신을 이끌고, 회사와 저의 성장으로 이어지기 때문입니다. 이에 가장 부합하는 회사가 ‘WEEK’라고 판단하여 지원했습니다.','끊임없이 도전하며 회사의 성장에 기여하고 싶습니다. 도전은 변화와 혁신을 이끌고, 회사와 저의 성장으로 이어지기 때문입니다. 이에 가장 부합하는 회사가 ‘WEEK’라고 판단하여 지원했습니다.');
insert into weekcrew(name, email, content, content2) VALUES ('이지원','leeji@week.com','제가 회사를 선택하는 기준은 끊임없이 혁신하고 가치창조를 하며 성장 가능성이 있는 기업인가? 입니다. 4차 산업혁명 시대를 맞이하여 기업이 현재 성과에 안주하고 혁신을 멈춘다면 자연스럽게 도태될 것입니다. WEEK과 함께 성장하고 싶습니다.','제가 회사를 선택하는 기준은 끊임없이 혁신하고 가치창조를 하며 성장 가능성이 있는 기업인가? 입니다. 4차 산업혁명 시대를 맞이하여 기업이 현재 성과에 안주하고 혁신을 멈춘다면 자연스럽게 도태될 것입니다. WEEK과 함께 성장하고 싶습니다.');
insert into weekcrew(name, email, content, content2) VALUES ('강지원','kangji@week.com','기업을 선택할 때 상호 존중 하에 본인의 역량을 얼마나 발휘할 수 있는가?에 대해 항상 고민합니다. 그 이유는 기업의 임직원 분들이 상호 존중의 정도에 따라서 역량을 발휘할 수 있는 것은 천지 차이이기 때문입니다. 만약 서로가 존중하지 않고 소통이 결여된 곳이라면 본인의 역량을 제한적으로 발휘할 것이고 서로의 눈치를 보며 그 기업은 더 나아가 발전할 수 없을 것입니다. WEEK에서 더욱 성장하고 싶습니다.','기업을 선택할 때 상호 존중 하에 본인의 역량을 얼마나 발휘할 수 있는가?에 대해 항상 고민합니다. 그 이유는 기업의 임직원 분들이 상호 존중의 정도에 따라서 역량을 발휘할 수 있는 것은 천지 차이이기 때문입니다. 만약 서로가 존중하지 않고 소통이 결여된 곳이라면 본인의 역량을 제한적으로 발휘할 것이고 서로의 눈치를 보며 그 기업은 더 나아가 발전할 수 없을 것입니다. WEEK에서 더욱 성장하고 싶습니다.');
insert into weekcrew(name, email, content, content2) VALUES ('최지원','choiji@week.com','WEEK에 입사하여 더욱 깨끗하고 올바른 조직문화를 만들어 임직원 분들이 일하기 좋은 환경을 만들고 회사에 기여하고 싶기 때문입니다. 저는 회사를 지원할 때 선택하는 기준으로 역량을 십분 발휘할 수 있고 저를 통해 회사가 더욱 성장하고 발전할 수 있는지를 고려합니다. WEEK의 인사 직무는 타 부서를 위한 또 다른 고객센터라고 생각합니다. ','WEEK에 입사하여 더욱 깨끗하고 올바른 조직문화를 만들어 임직원 분들이 일하기 좋은 환경을 만들고 회사에 기여하고 싶기 때문입니다. 저는 회사를 지원할 때 선택하는 기준으로 역량을 십분 발휘할 수 있고 저를 통해 회사가 더욱 성장하고 발전할 수 있는지를 고려합니다. WEEK의 인사 직무는 타 부서를 위한 또 다른 고객센터라고 생각합니다. ');
