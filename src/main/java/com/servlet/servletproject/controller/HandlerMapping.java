package com.servlet.servletproject.controller;

import java.util.HashMap;
import java.util.Map;

/**
 * 클라이언트의 요청을 처리할 컨트롤러 객체를 매핑한다.
 */
public class HandlerMapping
{

    private Map<String, Controller> mappings;

    public HandlerMapping()
    {
        mappings = new HashMap<String, Controller>();
    }

    public Controller getController(String path)
    {
        return mappings.get(path);
    }
}
