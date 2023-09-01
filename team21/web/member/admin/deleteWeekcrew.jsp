<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%@ page import="com.week.dto.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    int wid = Integer.parseInt(request.getParameter("wid"));
    String path = request.getContextPath();

    Connection conn = null;
    PreparedStatement pstmt = null;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if (conn != null) {
        System.out.println("DB 연결 성공");
    }

    String sql = "delete from weekcrew where wid=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, wid);
    int cnt = pstmt.executeUpdate();

    if ( cnt >0 ){
        out.println("<script>alert('지원서 삭제 성공.');");
        response.sendRedirect(path + "/member/admin/adminWeekcrew.jsp");
    } else {
        out.println("<script>alert('지원서 삭제 실패.');");
        response.sendRedirect(path + "/member/admin/adminWeekcrew.jsp");
    }

    con.close(pstmt,conn);

%>