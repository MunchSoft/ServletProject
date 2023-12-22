package com.servlet.servletproject.controller.mvc;

/**
 * 컨트롤러가 리턴한 뷰 이름을 기반으로 최종적으로 이동할 화면 정보를 완성한다.
 */
public class ViewResolver {
    public String prefix;
    public String suffix;

    public void setPrefix(String prefix)
    {
        this.prefix = prefix;
    }

    public void setSuffix(String suffix)
    {
        this.suffix = suffix;
    }

    public String getView(String viewName)
    {
        String view = prefix + viewName + suffix;
        System.out.println(view);
        return view;
    }
}
