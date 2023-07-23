package com.example.jfi.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/quest")
public class QuestServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int step = Integer.parseInt(req.getParameter("choice"));
        req.setAttribute("step", step);

        switch (step) {
            case 400, 402, 401, 403, 404 -> req.getRequestDispatcher("result.jsp").forward(req, resp);
            case 10-> req.getRequestDispatcher("pin-code.jsp").forward(req, resp);
            default->req.getRequestDispatcher("story.jsp").forward(req, resp);
        }
    }
}

