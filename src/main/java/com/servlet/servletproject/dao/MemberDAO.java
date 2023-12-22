package com.servlet.servletproject.dao;

import com.servlet.servletproject.common.JDBCUtil;
import com.servlet.servletproject.vo.member.MemberVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
    private static String MEMBER_INSERT_ALL="insert into member (id, password, name, role, post_code, address1, address2) values (?,?,?,?,?,?,?)";
    private static String MEMBER_INSERT="insert into member (id, password, name, role) values (?,?,?)";
    private static String MEMBER_UPDATE="update member set password=?, post_code=?, address1=?, address2=? where id = ?";
    private static String MEMBER_DELETE="delete from member where id=?";
    private static String MEMBER_GET="select * from member where id=?";
    private static String MEMBER_LIST="select * from member order by id desc";

    public void idCheckMember(String id){

    }
    public void insertMember(MemberVO vo) {
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement pstmt = vo.getPost_code() != null ?
                     conn.prepareStatement(MEMBER_INSERT_ALL) :
                     conn.prepareStatement(MEMBER_INSERT)) {

            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPassword());
            pstmt.setString(3, vo.getName());
            pstmt.setString(4, vo.getRole());

            if (vo.getPost_code() != null) {
                pstmt.setString(5, vo.getPost_code());
                pstmt.setString(6, vo.getAddress1());
                pstmt.setString(7, vo.getAddress2());
            }

            pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updaetMember(MemberVO vo){
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(MEMBER_UPDATE)) {
            pstmt.setString(1, vo.getPassword());
            pstmt.setString(2, vo.getPost_code());
            pstmt.setString(3, vo.getAddress1());
            pstmt.setString(4, vo.getAddress2());
            pstmt.setString(5, vo.getId());
            pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void deleteMember(MemberVO vo){
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(MEMBER_DELETE)){
            pstmt.setString(1, vo.getId());
            pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public MemberVO getMember(MemberVO vo) {
        MemberVO member = null; // 변수 범위를 try 블록 외부로 이동

        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(MEMBER_GET)) {

            pstmt.setString(1, vo.getId());

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    member = new MemberVO();
                    member.setId(rs.getString("ID"));
                    member.setPassword(rs.getString("PASSWORD"));
                    member.setName(rs.getString("NAME"));
                    member.setRole(rs.getString("ROLE"));
                    member.setPost_code(rs.getString("POST_CODE"));
                    member.setAddress1(rs.getString("ADDRESS1"));
                    member.setAddress2(rs.getString("ADDRESS2"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return member;
    }

    public List<MemberVO> getMemberList() {
        List<MemberVO> memberList = new ArrayList<>();

        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(MEMBER_LIST);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                MemberVO member = new MemberVO();
                member.setId(rs.getString("ID"));
                member.setPassword(rs.getString("PASSWORD"));
                member.setName(rs.getString("NAME"));
                member.setRole(rs.getString("ROLE"));
                member.setPost_code(rs.getString("POST_CODE"));
                member.setAddress1(rs.getString("ADDRESS1"));
                member.setAddress2(rs.getString("ADDRESS2"));

                memberList.add(member);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return memberList;
    }

}
