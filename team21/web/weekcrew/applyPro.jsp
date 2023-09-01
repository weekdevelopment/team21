<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    String path = request.getContextPath();
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String content = request.getParameter("content");
    String content2 = request.getParameter("content2");


    Connection conn = null;
    PreparedStatement pstmt = null;

    int cnt =0;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if(conn != null){
        System.out.println("DB 연결 성공");
    }

    try {
        String sql = "insert into weekcrew(name, email, content, content2) values (?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, content);
        pstmt.setString(4, content2);
        cnt = pstmt.executeUpdate();

        String script = "<script>";
        script += "history.go(-1)";
        script += "</script>";
        if(cnt >0){
            response.sendRedirect(path + "/weekcrew/applyRS.jsp");
        } else {
            out.print(script);
        }
    } catch(SQLException e) {
        System.out.println("SQL 구문이 처리되지 못했습니다.");
    } finally {
        con.close(pstmt, conn);
    }
%>