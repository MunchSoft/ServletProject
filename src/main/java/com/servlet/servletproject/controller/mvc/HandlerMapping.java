package com.servlet.servletproject.controller.mvc;

import com.servlet.servletproject.controller.member.InsertMemberController;
import com.servlet.servletproject.controller.member.InsertMemberViewController;

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
        mappings.put("/insertMemberView.do", new InsertMemberViewController());
        mappings.put("/insertMember.do", new InsertMemberController());
    }

    public Controller getController(String path)
    {
        return mappings.get(path);
    }
}
