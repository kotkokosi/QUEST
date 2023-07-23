package com.example.jfi.servlets;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.example.jfi.classes.User.getUser;


@WebServlet(name = "InitServlet", value = "/init")
public class InitServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        getUser().setName(request.getParameter("name"));
        getUser().setIp(String.valueOf(request.getRemoteAddr()));
        getUser().plusCountGame();
        request.getSession().setAttribute("user", getUser());
        getServletContext().getRequestDispatcher("/story.jsp").forward(request, response);
   }
}
