<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 6 - Équation du second degré</title>
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
        .equation-display {
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            margin: 15px 0;
            padding: 10px;
            background-color: #FFFFFF;
            border: 2px inset #808080;
        }
        .form-table {
            width: 100%;
            border: 2px inset #808080;
            background-color: #FFFFFF;
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
        input[type="number"] {
            width: 95%;
            padding: 3px;
            border: 2px inset #808080;
            font-family: Arial, sans-serif;
            font-size: 11px;
        }
        button {
            background-color: #C0C0C0;
            border-width: 2px;
            border-style: outset;
            border-color: #FFFFFF #000000 #000000 #FFFFFF;
            padding: 6px 20px;
            font-family: Arial, sans-serif;
            font-size: 11px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }
        button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
        }
        .erreur {
            background-color: #FF0000;
            color: #FFFFFF;
            padding: 10px;
            border: 2px outset #FF0000;
            margin: 10px 0;
            font-weight: bold;
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
                        <td class="titlebar">Exercice 6 - Résolution d'équation du second degré</td>
                    </tr>
                    <tr>
                        <td class="content-area">
                            <h1>Résolution d'équation du second degré</h1>

                            <div class="equation-display">
                                AX² + BX + C = 0
                            </div>

                            <% if (request.getAttribute("erreur") != null) { %>
                                <div class="erreur">
                                    ⚠ <%= request.getAttribute("erreur") %>
                                </div>
                            <% } %>

                            <form method="post" action="exercice6">
                                <table class="form-table" cellpadding="5" cellspacing="0">
                                    <tr>
                                        <th>Coefficient A :</th>
                                        <td><input type="number" name="a" step="any" required></td>
                                    </tr>
                                    <tr>
                                        <th>Coefficient B :</th>
                                        <td><input type="number" name="b" step="any" required></td>
                                    </tr>
                                    <tr>
                                        <th>Coefficient C :</th>
                                        <td><input type="number" name="c" step="any" required></td>
                                    </tr>
                                </table>

                                <button type="submit">Résoudre l'équation</button>
                            </form>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
