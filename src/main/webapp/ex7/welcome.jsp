<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenue</title>
    <style>
        body {
            background-color: #008080;
            font-family: Arial, "MS Sans Serif", sans-serif;
            margin: 0;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
        }
        .titlebar {
            background: linear-gradient(to bottom, #000080, #1084d0);
            color: white;
            padding: 3px 5px;
            font-weight: bold;
            font-size: 11px;
        }
        .main-container {
            background-color: #C0C0C0;
            border: 2px outset #FFFFFF;
            padding: 2px;
        }
        .content-area {
            background-color: #C0C0C0;
            padding: 30px;
        }
        .success-panel {
            background-color: #00FF00;
            border: 2px outset #00AA00;
            padding: 20px;
            text-align: center;
            margin: 20px 0;
        }
        .success-icon {
            font-size: 48px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .message {
            font-size: 14px;
            font-weight: bold;
            margin: 10px 0;
        }
        .user-info {
            background-color: #FFFFFF;
            border: 2px inset #808080;
            padding: 15px;
            margin: 20px 0;
            text-align: center;
        }
        .button {
            background-color: #C0C0C0;
            border-width: 2px;
            border-style: outset;
            border-color: #FFFFFF #000000 #000000 #FFFFFF;
            padding: 6px 20px;
            font-family: Arial, sans-serif;
            font-size: 11px;
            cursor: pointer;
            text-decoration: none;
            color: black;
            display: inline-block;
        }
        .button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
        }
    </style>
</head>
<body>
    <center>
    <table width="600" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main-container">
                    <tr>
                        <td class="titlebar">Exercice 7 - Connexion réussie</td>
                    </tr>
                    <tr>
                        <td class="content-area">

                            <div class="success-panel">
                                <div class="success-icon">✓</div>
                                <div class="message">CONNEXION RÉUSSIE !</div>
                            </div>

                            <table width="100%" border="0">
                                <tr>
                                    <td align="center">
                                        <p style="font-size: 14px; margin: 20px 0;">
                                            Bienvenue sur votre espace personnel
                                        </p>
                                    </td>
                                </tr>
                            </table>

                            <div class="user-info">
                                <table width="100%" border="1" cellpadding="8" cellspacing="0" style="border-color: #808080;">
                                    <tr>
                                        <th bgcolor="#C0C0C0" width="40%">Utilisateur connecté :</th>
                                        <td><b><%= request.getAttribute("login") %></b></td>
                                    </tr>
                                    <tr>
                                        <th bgcolor="#C0C0C0">Statut :</th>
                                        <td><b style="color: #008000;">AUTHENTIFIÉ</b></td>
                                    </tr>
                                </table>
                            </div>

                            <center>
                                <a href="../exercice7" class="button">◄ Retour à la page de connexion</a>
                            </center>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
