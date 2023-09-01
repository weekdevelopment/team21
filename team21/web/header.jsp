<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String sid = null;
    sid = (String) session.getAttribute("id");

    String path8 = request.getContextPath();
%>

<div class="hd_wrap">
    <nav class="tnb">
        <ul class="menu">
            <% if (sid != null) { %>
            <li><a href="<%=path8 %>/member/logout.jsp">로그아웃</a></li>
            <li><a href="<%=path8 %>/member/mypage.jsp">마이페이지</a></li>
            <li><a href="<%=path8 %>/contact/map.jsp">오시는길</a></li>
            <% if (sid.equals("admin")) { %>
            <li><a href="<%=path8 %>/member/admin/adminMain.jsp">관리자페이지</a></li>
            <% } %>
            <% } else { %>
            <li><a href="<%=path8 %>/member/login.jsp">로그인</a></li>
            <li><a href="<%=path8 %>/member/term.jsp">회원가입</a></li>
            <li><a href="<%=path8 %>/contact/map.jsp">오시는길</a></li>
            <% } %>
        </ul>
    </nav>
</div>
<div class="hd_wrap">
    <a href="<%=path8 %>" class="logo">
        <img src="<%=path8 %>/images/bigWeekLogo.png" alt="윜 로고">
    </a>
    <nav class="gnb">
        <ul class="menu">
            <li class="item1">
                <a href="<%=path8 %>/company/company.jsp" class="dp1">회사소개</a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/company/company.jsp">'윜'이란?</a></li>
                    <li><a href="<%=path8 %>/company/company.jsp?#scroll">'윜' 스토리</a></li>
                    <li><a href="<%=path8 %>/company/contribution.jsp">사회공헌</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="<%=path8 %>/board/boardList.jsp" class="dp1">윜 News</a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/board/boardList.jsp">공지사항</a></li>
                    <li><a href="<%=path8 %>/masscom/masscomList.jsp">언론보도</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="<%=path8 %>/business/weekly.jsp" class="dp1">사업영역</a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/business/weekly.jsp">위클리</a></li>
                    <li><a href="<%=path8 %>/business/weekend.jsp">위켄드</a></li>
                    <li><a href="<%=path8 %>/business/weekmarket.jsp">윜마켓</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="<%=path8 %>/faq/faqList.jsp" class="dp1">고객만족센터</a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/faq/faqList.jsp">자주하는질문</a></li>
                    <li><a href="<%=path8 %>/qna/qnaList.jsp">1:1 문의</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="<%=path8 %>/weekcrew/apply.jsp" class="dp1">인재채용</a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/weekcrew/apply.jsp">윜크루 되기</a></li>
                    <li><a href="<%=path8 %>/weekcrew/weekcrew.jsp">윜크루 되면</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>