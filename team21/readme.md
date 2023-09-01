# 프로젝트
## 프로젝트 개요
"Week"이라는 가상 기업을 주제로 프론트엔드 부분을 설계 시에는 페이퍼와 카카오 oven 프로토타입으로 사용성을 테스트 한 후,
html과 css, javascript로 작성하고, 백엔드 부분은 jsp의 디렉티브, 스크립트릿, 표현식만 활용하여 기업형 데스크탑 웹 애플리케이션을 작성하였음.
해당 프로젝트는 회원기능인 회원가입, 로그인, 로그아웃, 회원 정보 확인, 회원 정보 수정, 회원 탈퇴,
회원의 1:1 문의글 목록, 문의글 상세보기, 문의글 등록, 문의글 수정, 문의글 삭제 등의 기능을 구현하였으며,
관리자는 일반 회원의 관리기능인 회원 정보 수정, 회원 강제 탈퇴, 회원 통계, 1:1문의글 관리, 공지사항, 언론보도, 자료실 기능 등을 구현하였음.

## 프로젝트 설계
![개념적 설계](./img/database/usecase.png "개념적 설계")
![논리적 설계](./img/database/erd_01.png "논리적 설계")
![물리적 설계](./img/database/erd_02.png "물리적 설계")
![클래스 다이어그램](./img/database/classdiagram.png "클래스 다이어그램")
![테이블 구현](./img/database/dbtables.png "테이블 구현")
![테이블 구현](./img/database/tableERD.png "테이블 구현")
![회원가입 unitTaskFlow](./img/database/unitTaskFlow_1.png "회원가입 unitTaskFlow")
![로그인 unitTaskFlow](./img/database/unitTaskFlow_2.png "로그인 unitTaskFlow")
![회원정보 수정 unitTaskFlow](./img/database/unitTaskFlow_3.png "회원정보 수정 unitTaskFlow")
![1:1 문의 unitTaskFlow](./img/database/unitTaskFlow_6.png "1:1 문의 unitTaskFlow")
![윜소식(공지사항) unitTaskFlow](./img/database/unitTaskFlow_4.png "윜소식(공지사항) unitTaskFlow")
![언론보도 unitTaskFlow](./img/database/unitTaskFlow_8.png "언론보도 unitTaskFlow")
![FAQ unitTaskFlow](./img/database/unitTaskFlow_7.png "FAQ unitTaskFlow")
![인재채용(지원하기) unitTaskFlow](./img/database/unitTaskFlow_5.png "인재채용(지원하기) unitTaskFlow")


## 기능 구현
![헤더](./img/index/header.png "헤더")
![메인페이지](./img/index/home1.png "메인페이지 첫 번째")
![메인페이지](./img/index/home2.png "메인페이지 두 번째")
![메인페이지](./img/index/companybutton.png "메인페이지 세 번째")
![메인페이지](./img/index/weeksummary.png "메인페이지 네 번째")
![풋터](./img/index/footer.png "풋터")
![로그인페이지](./img/login.png "로그인 페이지")
![회원약관 페이지](./img/term.png "회원약관 페이지")
![회원가입 페이지](./img/join.png "회원가입 페이지")
![회원정보 페이지](./img/mypage.png "회원정보 페이지")
![회사소개](./img/company_introduce.png "회사소개 첫 번째")
![회사소개](./img/company_social.png "회사소개 두 번째")
![회사소개](./img/company_weekstory.png "회사소개 세 번째")
![공지사항](./img/notice_1.png "공지사항 글 목록")
![공지사항](./img/notice_2.png "공지사항 글 쓰기")
![공지사항](./img/notice_3.png "공지사항 글 보기")
![공지사항](./img/notice_4.png "공지사항 글 수정")
![FAQ](./img/faq.png "FAQ")
![인재채용](./img/weekcrew_1.png "윜크루 되면")
![인재채용](./img/weekcrew_2.png "지원하기")
![인재채용](./img/weekcrew_3.png "지원완료")