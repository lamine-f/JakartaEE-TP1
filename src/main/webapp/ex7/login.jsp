<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 7 - Page de connexion</title>
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
            padding: 20px;
        }
        h1 {
            text-align: center;
            font-size: 16px;
            margin: 15px 0;
            color: #000000;
        }
        .login-table {
            width: 100%;
            border: 2px groove #808080;
            background-color: #C0C0C0;
            padding: 10px;
        }
        .form-table {
            width: 100%;
            margin: 10px 0;
        }
        .form-table td {
            padding: 8px;
        }
        .form-table td:first-child {
            text-align: right;
            font-weight: bold;
            width: 30%;
        }
        input[type="text"],
        input[type="password"] {
            width: 95%;
            padding: 3px;
            border: 2px inset #808080;
            font-family: Arial, sans-serif;
            font-size: 11px;
            background-color: #FFFFFF;
        }
        button {
            background-color: #C0C0C0;
            border-width: 2px;
            border-style: outset;
            border-color: #FFFFFF #000000 #000000 #FFFFFF;
            padding: 6px 30px;
            font-family: Arial, sans-serif;
            font-size: 11px;
            cursor: pointer;
        }
        button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
        }
        .info-panel {
            background-color: #FFFFE0;
            border: 2px inset #808080;
            padding: 10px;
            margin-top: 15px;
            font-size: 10px;
        }
    </style>
</head>
<body>
    <center>
    <table width="500" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main-container">
                    <tr>
                        <td class="titlebar">Exercice 7 - Connexion utilisateur</td>
                    </tr>
                    <tr>
                        <td class="content-area">
                            <h1>Entrez vos identifiants de connexion</h1>

                            <table class="login-table" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <form method="post" action="exercice7">
                                            <table class="form-table">
                                                <tr>
                                                    <td>Login :</td>
                                                    <td>
                                                        <input type="text" name="login"
                                                               value="<%= request.getParameter("login") != null ? request.getParameter("login") : "" %>"
                                                               required>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mot de passe :</td>
                                                    <td>
                                                        <input type="password" name="password" required>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" align="center" style="padding-top: 15px;">
                                                        <button type="submit">OK</button>
                                                        &nbsp;&nbsp;
                                                        <button type="reset">Annuler</button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </form>
                                    </td>
                                </tr>
                            </table>

                            <div class="info-panel">
                                <b>ℹ Information :</b><br>
                                Identifiants de test :<br>
                                • Login = <b>admin</b><br>
                                • Mot de passe = <b>passer</b>
                            </div>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
