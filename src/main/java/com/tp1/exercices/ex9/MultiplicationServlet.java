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
        // Récupération des paramètres debut et fin depuis l'URL
        String debutParam = request.getParameter("debut");
        String finParam = request.getParameter("fin");

        // Valeurs par défaut : de 1 à 5
        int debut = 1;
        int fin = 5;

        try {
            if (debutParam != null && !debutParam.isEmpty()) {
                debut = Integer.parseInt(debutParam);
            }
            if (finParam != null && !finParam.isEmpty()) {
                fin = Integer.parseInt(finParam);
            }

            // Validation des valeurs
            if (debut < 1) debut = 1;
            if (fin < debut) fin = debut;
            if (fin > 20) fin = 20; // Limite maximum pour éviter un affichage trop large

        } catch (NumberFormatException e) {
            // En cas d'erreur, utiliser les valeurs par défaut
            debut = 1;
            fin = 5;
        }

        // Transmission des valeurs à la JSP
        request.setAttribute("debut", debut);
        request.setAttribute("fin", fin);

        // Affichage de la page
        request.getRequestDispatcher("/ex9/multiplication.jsp").forward(request, response);
    }
}
