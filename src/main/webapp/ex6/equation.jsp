<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 6 - Équation du second degré</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .equation {
            text-align: center;
            font-size: 1.2em;
            margin: 20px 0;
            color: #666;
        }
        .form-group {
            margin: 15px 0;
        }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        input[type="number"] {
            width: 200px;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }
        button:hover {
            background-color: #45a049;
        }
        .erreur {
            color: red;
            padding: 10px;
            background-color: #ffe6e6;
            border-radius: 4px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Résolution d'équation du second degré</h1>

        <div class="equation">
            AX² + BX + C = 0
        </div>

        <% if (request.getAttribute("erreur") != null) { %>
            <div class="erreur">
                <%= request.getAttribute("erreur") %>
            </div>
        <% } %>

        <form method="post" action="exercice6">
            <div class="form-group">
                <label for="a">Coefficient A :</label>
                <input type="number" id="a" name="a" step="any" required>
            </div>

            <div class="form-group">
                <label for="b">Coefficient B :</label>
                <input type="number" id="b" name="b" step="any" required>
            </div>

            <div class="form-group">
                <label for="c">Coefficient C :</label>
                <input type="number" id="c" name="c" step="any" required>
            </div>

            <button type="submit">Résoudre l'équation</button>
        </form>
    </div>
</body>
</html>
