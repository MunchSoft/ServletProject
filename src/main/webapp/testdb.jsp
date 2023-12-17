<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.servlet.servletproject.common.JDBCUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conn = null;
    try {
        conn = JDBCUtil.getConnection();
        out.println("오라클에 접속되었습니다.");
    }catch (Exception e){
        out.println("오라클 접속 에러...");
        e.printStackTrace();
    }
%>
