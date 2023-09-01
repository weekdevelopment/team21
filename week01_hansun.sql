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

INSERT INTO qna(title, content, author, lev) VALUES('질문1', '질문1 내용입니다.', 'kim', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문2', '질문2 내용입니다.', 'lee', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문3', '질문3 내용입니다.', 'park', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문4', '질문4 내용입니다.', 'so', 0);
INSERT INTO qna(title, content, author, lev) VALUES('질문5', '질문5 내용입니다.', 'yoon', 0);
UPDATE qna SET par=qno WHERE lev = 0;

INSERT INTO qna(title, content, author, lev, par) VALUES('질문1 답변', '답변 내용', 'park', 1, 1);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문2 답변', '답변 내용', 'so', 1, 2);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문3 답변', '답변 내용', 'admin', 1, 3);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문4 답변', '답변 내용', 'admin', 1, 4);
INSERT INTO qna(title, content, author, lev, par) VALUES('질문5 답변', '답변 내용', 'admin', 1, 5);

CREATE VIEW qnalist AS (SELECT a.qno AS qno, a.title AS title, a.content AS content, 
a.author AS author, a.resdate AS resdate, a.cnt AS cnt, a.lev AS lev, a.par AS par, b.name AS NAME
FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

SELECT * FROM qnalist;

CREATE TABLE archive(ano INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
attach VARCHAR(200) NOT NULL,
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP());


INSERT INTO ARCHIVE(title, attach) VALUES
('자료 예시1', 'https://docs.google.com/uc?export=download&id=1OQ05PqEy8f98BXdr1Og3jM3qLY6EUAzg');
INSERT INTO archive(title, attach) VALUES
('자료 예시2', 'https://docs.google.com/uc?export=download&id=14XnScacxRq4ChkLiYmHdkEXVoL7el-wG');
