<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice 8 - Présentation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 700px;
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
            margin-bottom: 30px;
        }
        h2 {
            color: #2196F3;
            border-bottom: 2px solid #2196F3;
            padding-bottom: 10px;
            margin-top: 30px;
        }
        .form-group {
            margin: 15px 0;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input:focus {
            outline: none;
            border-color: #2196F3;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }
        button:hover {
            background-color: #0b7dda;
        }
        .results {
            margin-top: 30px;
            padding: 20px;
            background-color: #e8f5e9;
            border-radius: 4px;
            border-left: 4px solid #4CAF50;
        }
        .result-item {
            margin: 10px 0;
            padding: 8px;
            background-color: white;
            border-radius: 3px;
        }
        .result-label {
            font-weight: bold;
            color: #2e7d32;
            display: inline-block;
            width: 180px;
        }
        .result-value {
            color: #555;
        }
        .nouveau {
            display: inline-block;
            padding: 10px 20px;
            background-color: #FF9800;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 20px;
        }
        .nouveau:hover {
            background-color: #e68900;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Formulaire de Présentation</h1>

        <%
            Boolean submitted = (Boolean) request.getAttribute("submitted");
            if (submitted != null && submitted) {
        %>
            <!-- Affichage des résultats -->
            <h2>Informations saisies</h2>
            <div class="results">
                <div class="result-item">
                    <span class="result-label">Nom :</span>
                    <span class="result-value"><%= request.getAttribute("nom") %></span>
                </div>
                <div class="result-item">
                    <span class="result-label">Prénom :</span>
                    <span class="result-value"><%= request.getAttribute("prenom") %></span>
                </div>
                <div class="result-item">
                    <span class="result-label">Date de naissance :</span>
                    <span class="result-value"><%= request.getAttribute("dateNaissance") %></span>
                </div>
                <div class="result-item">
                    <span class="result-label">Lieu de naissance :</span>
                    <span class="result-value"><%= request.getAttribute("lieuNaissance") %></span>
                </div>
            </div>
            <a href="exercice8" class="nouveau">Nouvelle présentation</a>

        <% } else { %>
            <!-- Affichage du formulaire -->
            <form method="post" action="exercice8">
                <div class="form-group">
                    <label for="nom">Nom :</label>
                    <input type="text" id="nom" name="nom" required>
                </div>

                <div class="form-group">
                    <label for="prenom">Prénom :</label>
                    <input type="text" id="prenom" name="prenom" required>
                </div>

                <div class="form-group">
                    <label for="dateNaissance">Date de naissance :</label>
                    <input type="date" id="dateNaissance" name="dateNaissance" required>
                </div>

                <div class="form-group">
                    <label for="lieuNaissance">Lieu de naissance :</label>
                    <input type="text" id="lieuNaissance" name="lieuNaissance" required>
                </div>

                <button type="submit">Valider</button>
            </form>
        <% } %>
    </div>
</body>
</html>
