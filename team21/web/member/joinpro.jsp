<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%@ page import="com.week.util.*" %>
<%@ page import="java.security.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    String path = request.getContextPath();
    //System.out.println(path);

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    pw = AES256.sha256(pw);
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");

    Connection conn = null;
    PreparedStatement pstmt = null;

    int cnt =0;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if(conn != null){
        System.out.println("DB 연결 성공");
    }

    try {
        String sql = "insert into member(id, pw, name, email, tel) values (?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        pstmt.setString(3, name);
        pstmt.setString(4, email);
        pstmt.setString(5, tel);
        cnt = pstmt.executeUpdate();

        if(cnt >0){
            response.sendRedirect(path+"/member/login.jsp");
        } else {
            response.sendRedirect(path+"/member/join.jsp");
        }
    } catch(SQLException e) {
        System.out.println("SQL 구문이 처리되지 못했습니다.");
    } finally {
        con.close(pstmt, conn);
    }
%>