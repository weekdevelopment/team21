<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 1. 필요한 라이브러리 로딩 --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.week.db.*" %>
<%@ include file="../encoding.jsp" %>
<%
    String path = request.getContextPath();
    System.out.println("경로:" + path);

    //2. 보내온 데이터 받기
    String id = request.getParameter("id");
    int mode = Integer.parseInt(request.getParameter("mode"));

    //3. DB 연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    DBC con = new MariaDBCon();
    conn = con.connect();
    //4. sql 실행 및 실행결과 리턴
    String sql = "delete from member where id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);

    int cnt = pstmt.executeUpdate();
    if (cnt > 0) {
        System.out.println("회원 삭제 성공");
        session.invalidate();
        if (mode == 0) {
            out.println("<script>alert('회원을 삭제하였습니다.');");
            out.println("location.href='" + path + "/member/admin/admin.jsp';</script>");
        } else {
            out.println("<script>alert('탈퇴가 완료되었습니다.');");
            out.println("location.href=" + path + ";</script>");
        }
    } else {
        System.out.println("회원 삭제 실패");
        //response.sendRedirect("/qna/updateQna.jsp?qno="+qno);
        out.println("<script>alert('회원 삭제 실패');</script>");
        out.println("<script>history.go(-1);</script>");
    }
    con.close(pstmt, conn);
%>