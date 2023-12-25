package com.servlet.servletproject.controller.main;

import com.servlet.servletproject.controller.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainPageController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("메인 페이지로 이동");
        return "main";
    }
}
