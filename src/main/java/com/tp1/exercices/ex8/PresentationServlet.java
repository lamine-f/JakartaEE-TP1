package com.tp1.exercices.ex8;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/exercice8")
public class PresentationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/ex8/presentation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String dateNaissance = request.getParameter("dateNaissance");
        String lieuNaissance = request.getParameter("lieuNaissance");

        request.setAttribute("nom", nom);
        request.setAttribute("prenom", prenom);
        request.setAttribute("dateNaissance", dateNaissance);
        request.setAttribute("lieuNaissance", lieuNaissance);
        request.setAttribute("submitted", true);

        request.getRequestDispatcher("/ex8/presentation.jsp").forward(request, response);
    }
}
