package com.tp1.exercices.ex7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/exercice7")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Identifiants acceptés
    private static final String VALID_LOGIN = "admin";
    private static final String VALID_PASSWORD = "passer";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Afficher le formulaire de connexion
        request.getRequestDispatcher("/ex7/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupération des paramètres
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        // Validation des identifiants
        if (VALID_LOGIN.equals(login) && VALID_PASSWORD.equals(password)) {
            // Connexion réussie
            request.setAttribute("login", login);
            request.getRequestDispatcher("/ex7/welcome.jsp").forward(request, response);
        } else {
            // Connexion échouée - rediriger vers la page d'échec avec le login en paramètre
            response.sendRedirect("ex7/echec.jsp?login=" + (login != null ? login : ""));
        }
    }
}
