package com.servlet.servletproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 실질적인 클라이언트의 요청을 처리한다.
 */
public interface Controller
{
    String handleRequest(HttpServletRequest request, HttpServletResponse response);
}
