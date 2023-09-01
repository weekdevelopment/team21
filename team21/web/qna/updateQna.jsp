<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 1. 필요한 라이브러리 불러오기 --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%@ page import="com.week.vo.*" %>
<%-- 2. 인코딩 및 보내온 데이터 받기 --%>
<%@ include file="/encoding.jsp" %>
<%
    int qno = Integer.parseInt(request.getParameter("qno"));
    //3. DB연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    DBC con = new MariaDBCon();
    conn = con.connect();
    //4. sql 실행 및 실행결과 받기
    String sql = "SELECT * FROM qnalist WHERE qno=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, qno);
    //5. 실행결과(ResultSet) 인 해당 Qna 1건 qna(질문및답변) 객체에 넣기
    rs = pstmt.executeQuery();
    Qna qna = new Qna();
    if (rs.next()) {
        qna.setQno(rs.getInt("qno"));
        qna.setTitle(rs.getString("title"));
        qna.setContent(rs.getString("content"));
        qna.setAuthor(rs.getString("author"));
        qna.setResdate(rs.getString("resdate"));
        qna.setCnt(rs.getInt("cnt"));
        qna.setName(rs.getString("name"));
        qna.setLev(rs.getInt("lev"));
        qna.setPar(rs.getInt("par"));
    }
    String sel = "";
    if (qna.getLev() == 0) {
        sel = "질문";
    } else {
        sel = "답변";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>질문 및 답변 글 상세보기</title>
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
            background-image: url("../images/bg_visual_overview.jpg");
            background-repeat: no-repeat; background-position:center -250px; height: 1400px; }
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; height: 100vh; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadcrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadcrumb a { color:#fff; }

        .tb1 { width:800px; margin:50px auto; }
        .tb1 th { width:150px; line-height:32px; padding-top:8px; padding-bottom:8px;
            border-top:1px solid #f5be8b; border-bottom:1px solid #f5be8b;
            background-color:#f5be8b; color:#fff; vertical-align:middle; }
        .tb1 td { width:650px; line-height:32px; padding-top:8px; padding-bottom:8px;
            border-bottom:1px solid #f5be8b;
            padding-left: 14px; border-top:1px solid #f5be8b; }

        .indata { display:inline-block; width:600px; height: 48px; line-height: 48px;
            padding:14px; font-size:18px; }
        .indata2 { width: 600px; padding: 14px; font-size:18px; }
        .inbtn { display:block;  border-radius:100px;
            min-width:140px; padding-left: 24px; padding-right: 24px; text-align: center;
            line-height: 48px; background-color: #333; color:#fff; font-size: 18px; }
        .inbtn:first-child { float:left; }
        .inbtn:last-child { float:right; }
    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>
        .btn_group p {text-align: center;   line-height:3.6; }
    </style>
</head>
<body>
<div class="container">
    <div class="wrap">
        <header class="hd" id="hd">
            <%@ include file="../header.jsp"%>
        </header>
        <div class="contents" id="contents">
            <div class="breadcrumb">
                <p><a href="<%=path8 %>">HOME</a> &gt; <a href="<%=path8 %>/qna/qnaList.jsp">질문 및 답변</a> &gt; <span>질문 및 답변 글 수정보기</span></p>
            </div>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit"><%=sel %> 글 수정보기</h2>
                    <br><br><hr><br><br>
                    <form action="<%=path8 %>/qna/updateQnaPro.jsp" method="post">
                        <table class="tb1" id="myTable">
                            <tbody>
                            <!-- 6. 해당 글번호에 대한 글 상세내용 출력 -->
                            <tr>
                                <th>유형</th>
                                <td>
                                    <% if (qna.getLev() == 0) { %>
                                    <span>질문</span>
                                    <% } else { %>
                                    <span>답변</span>
                                    <% } %>
                                </td>
                            </tr>
                            <tr>
                                <th>글 제목</th>
                                <td>
                                    <input type="text" name="title" id="title" class="indata" maxlength="98" value="<%=qna.getTitle() %>" required>
                                    <input type="hidden" name="author" id="author" value="<%=qna.getAuthor() %>">
                                    <input type="hidden" name="qno" id="qno" value="<%=qna.getQno() %>">
                                </td>
                            </tr>
                            <tr>
                                <th>글 내용</th>
                                <td><textarea cols="80" rows="10" name="content" id="content" class="indata2" maxlength="990"><%=qna.getContent() %></textarea></td>
                            </tr>
                            <tr>
                                <th>작성자</th>
                                <td>
                                    <% if (sid != null && sid.equals("admin")) { %>
                                    <span title="<%=qna.getAuthor()%>"><%=qna.getName() %></span>
                                    <% } else { %>
                                    <span><%=qna.getName() %></span>
                                    <% } %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <% if (sid != null && (sid.equals("admin") || sid.equals(qna.getAuthor()))) { %>
                                    <input type="submit" class="inbtn" value="<%=sel %> 수정하기">
                                    <% } %>
                                    <a href="<%=path8 %>/qna/qnaList.jsp" class="inbtn">목록</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </section>
        </div>
        <footer class="ft" id="ft">
            <%@ include file="../footer.jsp"%>
        </footer>
    </div>
</div>
</body>
</html>