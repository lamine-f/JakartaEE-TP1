package com.tp1.exercices.ex6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/exercice6")
public class EquationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Afficher le formulaire
        request.getRequestDispatcher("/ex6/equation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Récupération des paramètres
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));

            // Vérification que a != 0 (sinon ce n'est pas une équation du second degré)
            if (a == 0) {
                request.setAttribute("erreur", "Le coefficient A ne peut pas être nul pour une équation du second degré.");
                request.getRequestDispatcher("/ex6/equation.jsp").forward(request, response);
                return;
            }

            // Calcul du discriminant
            double delta = b * b - 4 * a * c;

            // Stockage des valeurs pour affichage
            request.setAttribute("a", a);
            request.setAttribute("b", b);
            request.setAttribute("c", c);
            request.setAttribute("delta", delta);

            // Calcul des solutions selon le discriminant
            if (delta > 0) {
                // Deux solutions réelles distinctes
                double x1 = (-b + Math.sqrt(delta)) / (2 * a);
                double x2 = (-b - Math.sqrt(delta)) / (2 * a);
                request.setAttribute("x1", x1);
                request.setAttribute("x2", x2);
                request.setAttribute("nbSolutions", 2);
            } else if (delta == 0) {
                // Une solution double
                double x0 = -b / (2 * a);
                request.setAttribute("x0", x0);
                request.setAttribute("nbSolutions", 1);
            } else {
                // Pas de solution réelle
                request.setAttribute("nbSolutions", 0);
            }

            // Redirection vers la page de résultats
            request.getRequestDispatcher("/ex6/resultat.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            request.setAttribute("erreur", "Veuillez saisir des nombres valides.");
            request.getRequestDispatcher("/ex6/equation.jsp").forward(request, response);
        }
    }
}
