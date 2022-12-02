<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="../db/db_conn.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl-1.2.jar" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl-1.2.jar" prefix="sql" %>

<%
	request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    
    
    SimpleDateFormat sDFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String registDay = sdFormat.format(new Date());

    String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, gender);
        pstmt.setString(5, birth);
        pstmt.setString(6, mail);
        pstmt.setString(7, phone);
        pstmt.setString(8, address);
        pstmt.setString(9, regist_day);
        pstmt.executeUpdate();

        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();

        response.sendRedirect("index_jsp");
