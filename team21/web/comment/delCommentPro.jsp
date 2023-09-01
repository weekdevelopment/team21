<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 1. 필요한 라이브러리 로딩 --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%@ include file="../encoding.jsp" %>
<%
    //2. 보내온 데이터 받기
    int qno = Integer.parseInt(request.getParameter("qno"));
    int cno = Integer.parseInt(request.getParameter("cno"));
    String path = request.getContextPath();

    //3. DB 연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    DBC con = new MariaDBCon();
    conn = con.connect();
    //4. sql 실행 및 실행결과 리턴
    String sql = "DELETE FROM comment WHERE cno=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, cno);
    int cnt = pstmt.executeUpdate();
    if (cnt > 0) {
        response.sendRedirect(path + "/qna/getQna.jsp?qno=" + qno);
    } else {
        out.println("<script>alert('댓글 삭제 실패');</script>");
        out.println("<script>history.go(-1);</script>");
    }
    con.close(pstmt, conn);
%>