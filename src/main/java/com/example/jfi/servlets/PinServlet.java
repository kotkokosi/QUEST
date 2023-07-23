package com.example.jfi.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.example.jfi.classes.PinCode.getPinCode;

@WebServlet("/pin")
public class PinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String enterPin = req.getParameter("pin");

        if (enterPin != null && enterPin.equals(getPinCode().getPin())) {
            req.setAttribute("step", 200);
            req.getRequestDispatcher("result.jsp").forward(req, resp);
        } else {
            req.setAttribute("step", 404);
            req.getRequestDispatcher("result.jsp").forward(req, resp);
        }
    }
}
