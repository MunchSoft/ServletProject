package com.servlet.servletproject.controller.mvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 유일한 서블릿 클래스로서 모든 클라이언트의 요청을 가장 먼저 처리하는 프런트 컨트롤러다.
 */
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet
{
    private HandlerMapping handlerMapping;
    private ViewResolver viewResolver;

    public void init() throws ServletException
    {
        handlerMapping = new HandlerMapping();
        viewResolver = new ViewResolver();
        viewResolver.setPrefix("./WEB-INF/");
        viewResolver.setSuffix(".jsp");
    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        String uri = request.getRequestURI();
        String path = uri.substring(uri.lastIndexOf("/"));

        Controller ctrl = handlerMapping.getController(path);

        String viewName = ctrl.handleRequest(request, response);

        String view = null;
        if(!viewName.contains(".do"))
        {
            if(viewName.equals("index"))
            {
                view = viewName + ".jsp";
            }
            else
            {
                view = viewResolver.getView(viewName);
            }
        }
        else
        {
            view = viewName;
        }
        System.out.println(view);
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
