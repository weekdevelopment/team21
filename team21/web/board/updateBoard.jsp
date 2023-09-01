<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.dto.*" %>
<%@ page import="com.week.db.*" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    int bno = Integer.parseInt(request.getParameter("bno"));
    int mode = Integer.parseInt(request.getParameter("mode"));
    DBC con = new MariaDBCon();
    conn = con.connect();
    if (conn != null) {
        System.out.println("DB 연결 성공");
    }

    String sql = "select * from board where bno=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, bno);
    rs = pstmt.executeQuery();
    Board bd =new Board();
    if ( rs.next()){
        bd.setBno(rs.getInt("bno"));
        bd.setTitle(rs.getString("title"));
        bd.setAuthor(rs.getString("author"));
        bd.setContent(rs.getString("content"));
        bd.setResdate(rs.getString("resdate"));
        bd.setCnt(rs.getInt("cnt"));
    }
    con.close(rs, pstmt, conn);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 글 상세보기</title>

    <%@ include file="../head.jsp" %>
    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="../google.css">
    <link rel="stylesheet" href="../fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../hd.css">
    <style>
        /* 본문 영역 스타일 */
        .wrap { background-color: #fffcf2; }
        .contents { clear:both; min-height:100vh;
            background-image: url("../weekcrew/images/library.jpg");
            background-repeat: no-repeat; background-position:center -250px; }
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; height: 100vh; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadscrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadscrumb a { color:#fff; }
        .frm { clear:both; width:1200px; margin:0 auto; padding-top: 80px; }

        .tb1 { width:800px; margin:50px auto; }
        .tb1 th { line-height:32px; padding-top:8px; padding-bottom:8px;
            border-top:1px solid #f5be8b; border-bottom:1px solid #f5be8b;
            background-color:#f5be8b; color:#fff; }
        .tb1 td {line-height:32px; padding-top:8px; padding-bottom:8px;
            border-bottom:1px solid #f5be8b;
            padding-left: 14px; border-top:1px solid #f5be8b; }

        .indata { display:inline-block; width:300px; height: 48px; line-height: 48px;
            text-indent:14px; font-size:18px; }
        .inbtn { display:block;  border-radius:100px;
            min-width:100px; padding-left: 24px; padding-right: 24px; text-align: center;
            line-height: 48px; background-color: #f5be8b; color:#fff; font-size: 18px;
            float:left; margin-right: 20px; border-color: #f5be8b; }
        .inbtn:last-child { float:right; }
    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>

    </style>
</head>
<body>
<div class="container">
    <div class="wrap">
        <header class="hd" id="hd">
            <%@ include file="../header.jsp" %>
        </header>
        <div class="contents" id="contents">
            <div class="breadscrumb">
                <p><a href="<%=path8 %>">HOME</a> &gt <span>공지사항</span> &gt <span>공지사항 수정하기</span> </p>
            </div>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">공지사항 수정하기</h2>
                    <hr>
                    <form name="frm1" action="updateBoardPro.jsp" method="post">
                        <table class="tb1">
                            <tbody>
                            <tr>
                                <th>글 번호</th>
                                <td><input type="text" name="bno" id="bno" class="indata" readonly value="<%=bd.getBno() %>"/>
                                    <input type="hidden" name="mode" id="mode" class="indata" value="<%=mode %>" />
                                </td>

                            </tr>
                            <tr>
                                <th>글 제목</th>
                                <td><input type="text" name="title" id="title" class="indata" required value="<%=bd.getTitle() %>"/></td>
                            </tr>
                            <tr>
                                <th>글 내용</th>
                                <td><input type="text" name="content" id="content" class="indata" value="<%=bd.getContent() %>"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="colspan">
                                    <input type="submit" value="글 수정" class="inbtn">
                                    <a href="<%=path8 %>/board/boardList.jsp" class="inbtn">글목록으로</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </section>
        </div>
        <footer class="ft" id="ft">
            <%@ include file="../footer.jsp" %>
        </footer>
    </div>
</div>
</body>
</html>
