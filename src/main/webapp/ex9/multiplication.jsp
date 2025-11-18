<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 9 - Tables de multiplication</title>
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
        .control-panel {
            background-color: #E0E0E0;
            border: 2px groove #808080;
            padding: 10px;
            margin: 10px 0;
        }
        .control-panel table {
            width: 100%;
        }
        .control-panel td {
            padding: 5px;
        }
        .control-panel label {
            font-weight: bold;
            margin-right: 5px;
        }
        input[type="number"] {
            width: 60px;
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
            padding: 5px 15px;
            font-family: Arial, sans-serif;
            font-size: 11px;
            cursor: pointer;
        }
        button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
        }
        .tables-container {
            width: 100%;
            border: 2px inset #808080;
            background-color: #FFFFFF;
            margin: 15px 0;
        }
        .table-column {
            border: 1px solid #808080;
            background-color: #FFFFFF;
            vertical-align: top;
            padding: 5px;
        }
        .table-header {
            background: linear-gradient(to bottom, #000080, #0000AA);
            color: white;
            padding: 8px;
            text-align: center;
            font-weight: bold;
            font-size: 16px;
            border: 1px solid #000000;
        }
        .mult-table {
            width: 100%;
            margin-top: 5px;
        }
        .mult-table td {
            padding: 4px;
            border: 1px solid #C0C0C0;
            font-size: 11px;
        }
        .mult-table tr:nth-child(even) {
            background-color: #F0F0F0;
        }
        .operator {
            color: #FF0000;
            font-weight: bold;
        }
        .result {
            color: #0000AA;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <center>
    <table width="95%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="main-container">
                    <tr>
                        <td class="titlebar">Exercice 9 - Tables de multiplication</td>
                    </tr>
                    <tr>
                        <td class="content-area">
                            <h1>Table de multiplication</h1>

                            <%
                                int debut = (Integer) request.getAttribute("debut");
                                int fin = (Integer) request.getAttribute("fin");
                            %>

                            <div class="control-panel">
                                <form method="get" action="exercice9">
                                    <table width="100%" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td align="center">
                                                <label for="debut">Début :</label>
                                                <input type="number" id="debut" name="debut" value="<%= debut %>" min="1" max="20">
                                                &nbsp;&nbsp;
                                                <label for="fin">Fin :</label>
                                                <input type="number" id="fin" name="fin" value="<%= fin %>" min="1" max="20">
                                                &nbsp;&nbsp;
                                                <button type="submit">Afficher</button>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>

                            <table class="tables-container" cellpadding="5" cellspacing="0">
                                <tr>
                                    <%
                                        for (int table = debut; table <= fin; table++) {
                                    %>
                                        <td class="table-column">
                                            <div class="table-header"><%= table %></div>
                                            <table class="mult-table" cellpadding="2" cellspacing="0">
                                                <%
                                                    for (int i = 1; i <= 10; i++) {
                                                        int resultat = table * i;
                                                %>
                                                    <tr>
                                                        <td align="center">
                                                            <%= table %> <span class="operator">×</span> <%= i %>
                                                            <span class="operator">=</span>
                                                            <span class="result"><%= resultat %></span>
                                                        </td>
                                                    </tr>
                                                <%
                                                    }
                                                %>
                                            </table>
                                        </td>
                                    <%
                                        }
                                    %>
                                </tr>
                            </table>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
