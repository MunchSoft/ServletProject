package com.servlet.servletproject.common;

import java.sql.*;

public class JDBCUtil
{
    public static Connection getConnection()
    {
        Connection conn = null;
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:1521/xe";
        String id = "jspuser";
        String pass = "1234";
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url,id,pass);
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(ResultSet rs, PreparedStatement stmt, Connection conn)
    {
        try{
            rs.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        try{
            stmt.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        try{
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void close(PreparedStatement stmt, Connection conn)
    {
        try{
            stmt.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        try{
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
