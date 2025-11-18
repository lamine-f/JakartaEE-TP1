<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenue</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .welcome-container {
            background-color: white;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 500px;
        }
        h1 {
            color: #11998e;
            margin-bottom: 20px;
        }
        .success-icon {
            font-size: 60px;
            color: #38ef7d;
            margin-bottom: 20px;
        }
        .message {
            font-size: 18px;
            color: #555;
            margin: 20px 0;
        }
        .user-info {
            background-color: #e8f5e9;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            color: #2e7d32;
            font-weight: bold;
        }
        .logout {
            display: inline-block;
            padding: 12px 30px;
            background-color: #11998e;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .logout:hover {
            background-color: #0d7a72;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <div class="success-icon">✓</div>
        <h1>Connexion réussie !</h1>
        <p class="message">Bienvenue sur votre espace personnel</p>
        <div class="user-info">
            Utilisateur connecté : <%= request.getAttribute("login") %>
        </div>
        <a href="../exercice7" class="logout">Retour à la page de connexion</a>
    </div>
</body>
</html>
