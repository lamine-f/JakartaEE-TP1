<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 8 - Présentation</title>
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
            padding: 15px;
        }
        h1 {
            text-align: center;
            font-size: 18px;
            margin: 10px 0;
            color: #000080;
        }
        h2 {
            font-size: 14px;
            margin: 15px 0 10px 0;
            color: #000080;
            background-color: #E0E0E0;
            padding: 5px;
            border: 2px groove #808080;
        }
        .form-table {
            width: 100%;
            border: 2px inset #808080;
            background-color: #FFFFFF;
            margin: 10px 0;
        }
        .form-table th {
            background-color: #C0C0C0;
            padding: 8px;
            text-align: right;
            font-weight: bold;
            width: 40%;
            border: 1px solid #808080;
        }
        .form-table td {
            padding: 8px;
            border: 1px solid #808080;
        }
        input[type="text"],
        input[type="date"] {
            width: 95%;
            padding: 3px;
            border: 2px inset #808080;
            font-family: Arial, sans-serif;
            font-size: 11px;
        }
        button, .button {
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
        button:active, .button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
        }
        .result-table {
            width: 100%;
            border: 2px inset #808080;
            background-color: #FFFFFF;
            margin: 10px 0;
        }
        .result-table th {
            background: linear-gradient(to bottom, #000080, #0000AA);
            color: white;
            padding: 8px;
            text-align: left;
            font-weight: bold;
            border: 1px solid #000000;
        }
        .result-table td {
            padding: 8px;
            border: 1px solid #808080;
            background-color: #FFFFE0;
        }
    </style>
</head>
<body>
    <center>
    <table width="700" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main-container">
                    <tr>
                        <td class="titlebar">Exercice 8 - Formulaire de présentation</td>
                    </tr>
                    <tr>
                        <td class="content-area">
                            <h1>Formulaire de Présentation</h1>

                            <%
                                Boolean submitted = (Boolean) request.getAttribute("submitted");
                                if (submitted != null && submitted) {
                            %>
                                <!-- Affichage des résultats -->
                                <h2>Informations saisies</h2>

                                <table class="result-table" cellpadding="5" cellspacing="0">
                                    <tr>
                                        <th colspan="2">Résumé de votre présentation</th>
                                    </tr>
                                    <tr>
                                        <td width="40%"><b>Nom :</b></td>
                                        <td><%= request.getAttribute("nom") %></td>
                                    </tr>
                                    <tr>
                                        <td><b>Prénom :</b></td>
                                        <td><%= request.getAttribute("prenom") %></td>
                                    </tr>
                                    <tr>
                                        <td><b>Date de naissance :</b></td>
                                        <td><%= request.getAttribute("dateNaissance") %></td>
                                    </tr>
                                    <tr>
                                        <td><b>Lieu de naissance :</b></td>
                                        <td><%= request.getAttribute("lieuNaissance") %></td>
                                    </tr>
                                </table>

                                <center>
                                    <a href="exercice8" class="button">◄ Nouvelle présentation</a>
                                </center>

                            <% } else { %>
                                <!-- Affichage du formulaire -->
                                <h2>Veuillez remplir le formulaire ci-dessous</h2>

                                <form method="post" action="exercice8">
                                    <table class="form-table" cellpadding="5" cellspacing="0">
                                        <tr>
                                            <th>Nom :</th>
                                            <td><input type="text" name="nom" required></td>
                                        </tr>
                                        <tr>
                                            <th>Prénom :</th>
                                            <td><input type="text" name="prenom" required></td>
                                        </tr>
                                        <tr>
                                            <th>Date de naissance :</th>
                                            <td><input type="date" name="dateNaissance" required></td>
                                        </tr>
                                        <tr>
                                            <th>Lieu de naissance :</th>
                                            <td><input type="text" name="lieuNaissance" required></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center" style="padding-top: 10px;">
                                                <button type="submit">Valider</button>
                                                &nbsp;&nbsp;
                                                <button type="reset">Réinitialiser</button>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            <% } %>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
