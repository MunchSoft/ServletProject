package com.servlet.servletproject.controller.member;

import com.servlet.servletproject.controller.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertMemberViewController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("회원가입 화면으로 이동");
        return "member/insertMember";
    }
}
