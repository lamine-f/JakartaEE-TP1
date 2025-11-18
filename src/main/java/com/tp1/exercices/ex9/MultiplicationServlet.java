package com.tp1.exercices.ex9;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/exercice9")
public class MultiplicationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String debutParam = request.getParameter("debut");
        String finParam = request.getParameter("fin");

        int debut = 1;
        int fin = 5;

        try {
            if (debutParam != null && !debutParam.isEmpty()) {
                debut = Integer.parseInt(debutParam);
            }
            if (finParam != null && !finParam.isEmpty()) {
                fin = Integer.parseInt(finParam);
            }

            if (debut < 1) debut = 1;
            if (fin < debut) fin = debut;
            if (fin > 20) fin = 20;

        } catch (NumberFormatException e) {
            debut = 1;
            fin = 5;
        }

        request.setAttribute("debut", debut);
        request.setAttribute("fin", fin);

        request.getRequestDispatcher("/ex9/multiplication.jsp").forward(request, response);
    }
}
