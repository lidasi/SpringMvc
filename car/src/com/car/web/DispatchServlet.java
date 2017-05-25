package com.car.web;

import org.springframework.web.servlet.DispatcherServlet;

/**
 * [name]<br>
 * Central dispatcher for HTTP request handlers/controllers<br>
 * <br>
 * [function]<br>
 * Dispatches to registered handlers for processing a web request, providing
 * convenient mapping and exception handling facilities.<br>
 * When the web server is started or stoped, do some custom processing<br>
 * <br>
 * [history]<br>
 * 2013/11/26 ver1.00 Lukai<br>
 */
public class DispatchServlet extends DispatcherServlet {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -4064344546438070112L;

    /**
     * 缺省构�?�函�?
     */
    public DispatchServlet() {
    
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
