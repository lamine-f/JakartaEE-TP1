<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 9 - Tables de multiplication</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            max-width: 1200px;
            margin: 0 auto;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .tables-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }
        .table-column {
            flex: 1;
            min-width: 120px;
            max-width: 200px;
            padding: 15px;
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .table-row {
            padding: 8px;
            margin: 5px 0;
            background-color: white;
            border-radius: 3px;
            font-size: 14px;
        }
        .multiply {
            color: #e91e63;
            font-weight: bold;
        }
        .equals {
            color: #2196F3;
        }
        .result {
            color: #4CAF50;
            font-weight: bold;
        }
        .controls {
            text-align: center;
            margin-bottom: 30px;
            padding: 20px;
            background-color: #e3f2fd;
            border-radius: 5px;
        }
        .controls label {
            margin: 0 10px;
            font-weight: bold;
        }
        .controls input {
            width: 60px;
            padding: 5px;
            margin: 0 5px;
            border: 1px solid #2196F3;
            border-radius: 3px;
        }
        .controls button {
            padding: 8px 20px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }
        .controls button:hover {
            background-color: #0b7dda;
        }
        .header-number {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #2196F3;
            margin-bottom: 15px;
            padding: 10px;
            background-color: #e3f2fd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Table de multiplication</h1>

        <%
            int debut = (Integer) request.getAttribute("debut");
            int fin = (Integer) request.getAttribute("fin");
        %>

        <!-- Formulaire de contrôle -->
        <div class="controls">
            <form method="get" action="exercice9">
                <label for="debut">Début :</label>
                <input type="number" id="debut" name="debut" value="<%= debut %>" min="1" max="20">

                <label for="fin">Fin :</label>
                <input type="number" id="fin" name="fin" value="<%= fin %>" min="1" max="20">

                <button type="submit">Afficher</button>
            </form>
        </div>

        <!-- Affichage des tables -->
        <div class="tables-container">
            <%
                for (int table = debut; table <= fin; table++) {
            %>
                <div class="table-column">
                    <div class="header-number"><%= table %></div>
                    <%
                        for (int i = 1; i <= 10; i++) {
                            int resultat = table * i;
                    %>
                        <div class="table-row">
                            <span><%= table %></span>
                            <span class="multiply"> * </span>
                            <span><%= i %></span>
                            <span class="equals"> = </span>
                            <span class="result"><%= resultat %></span>
                        </div>
                    <%
                        }
                    %>
                </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
