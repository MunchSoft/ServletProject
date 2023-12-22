package com.servlet.servletproject.controller.member;

import com.servlet.servletproject.controller.mvc.Controller;
import com.servlet.servletproject.dao.MemberDAO;
import com.servlet.servletproject.vo.member.MemberType;
import com.servlet.servletproject.vo.member.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertMemberController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("회원가입 처리");

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String post_code = request.getParameter("post_code");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");

        MemberVO vo = new MemberVO();
        vo.setId(id);
        vo.setPassword(password);
        vo.setName(name);
        vo.setRole(MemberType.MEMBER.toString());
        if(post_code != null){
            vo.setPost_code(post_code);
            vo.setAddress1(address1);
            vo.setAddress2(address2);
        }

        MemberDAO dao = new MemberDAO();
        dao.insertMember(vo);
        return "main";
    }
}
