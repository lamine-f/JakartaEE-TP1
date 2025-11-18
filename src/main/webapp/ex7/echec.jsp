<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Échec de connexion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #fc4a1a 0%, #f7b733 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .error-container {
            background-color: white;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 500px;
        }
        h1 {
            color: #d32f2f;
            margin-bottom: 20px;
        }
        .error-icon {
            font-size: 60px;
            color: #f44336;
            margin-bottom: 20px;
        }
        .message {
            font-size: 18px;
            color: #555;
            margin: 20px 0;
        }
        .error-info {
            background-color: #ffebee;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            color: #c62828;
        }
        .retry {
            display: inline-block;
            padding: 12px 30px;
            background-color: #fc4a1a;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .retry:hover {
            background-color: #d63e15;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-icon">✗</div>
        <h1>Échec de connexion</h1>
        <p class="message">Les identifiants fournis sont incorrects.</p>
        <div class="error-info">
            Login ou mot de passe invalide
        </div>
        <%
            String login = request.getParameter("login");
            String retourUrl = "../exercice7";
            if (login != null && !login.isEmpty()) {
                retourUrl += "?login=" + login;
            }
        %>
        <a href="<%= retourUrl %>" class="retry">Retour à la page de connexion</a>
    </div>
</body>
</html>
