package com.example.jfi.servlets;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.example.jfi.classes.User.getUser;

@WebServlet(name = "InitServlet", value = "/init")
public class InitServlet extends HttpServlet {

    private static final Logger log = LogManager.getLogger(InitServlet.class);

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        log.info("InitServlet - doGet method started.");

        try {
            getUser().setName(request.getParameter("name"));
            getUser().setIp(String.valueOf(request.getRemoteAddr()));
            getUser().plusCountGame();
            request.getSession().setAttribute("user", getUser());
            getServletContext().getRequestDispatcher("/story.jsp").forward(request, response);

            log.info("InitServlet - doGet method completed successfully.");
        } catch (Exception e) {
            log.error("InitServlet - Error in doGet method: ", e);
        }
    }
}
