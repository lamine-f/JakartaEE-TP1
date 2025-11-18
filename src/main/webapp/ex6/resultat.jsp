<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Résultats - Exercice 6</title>
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
            font-size: 1.3em;
            margin: 20px 0;
            padding: 15px;
            background-color: #e3f2fd;
            border-radius: 4px;
        }
        .resultat {
            margin: 20px 0;
            padding: 15px;
            background-color: #f0f0f0;
            border-radius: 4px;
        }
        .solution {
            font-size: 1.1em;
            color: #2e7d32;
            margin: 10px 0;
            font-weight: bold;
        }
        .no-solution {
            color: #c62828;
            font-weight: bold;
        }
        .delta {
            color: #1565c0;
            margin: 10px 0;
        }
        .retour {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #2196F3;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 20px;
        }
        .retour:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Résultats de l'équation</h1>

        <div class="equation">
            <%= request.getAttribute("a") %>X² + <%= request.getAttribute("b") %>X + <%= request.getAttribute("c") %> = 0
        </div>

        <div class="resultat">
            <p class="delta">Discriminant (Δ) = <%= String.format("%.4f", request.getAttribute("delta")) %></p>

            <%
                int nbSolutions = (Integer) request.getAttribute("nbSolutions");
                if (nbSolutions == 2) {
            %>
                <p>L'équation admet <strong>deux solutions réelles distinctes</strong> :</p>
                <p class="solution">X₁ = <%= String.format("%.4f", request.getAttribute("x1")) %></p>
                <p class="solution">X₂ = <%= String.format("%.4f", request.getAttribute("x2")) %></p>
            <%
                } else if (nbSolutions == 1) {
            %>
                <p>L'équation admet <strong>une solution double</strong> :</p>
                <p class="solution">X₀ = <%= String.format("%.4f", request.getAttribute("x0")) %></p>
            <%
                } else {
            %>
                <p class="no-solution">L'équation n'admet <strong>aucune solution réelle</strong> (Δ < 0).</p>
                <p>Les solutions sont complexes.</p>
            <%
                }
            %>
        </div>

        <a href="exercice6" class="retour">Résoudre une nouvelle équation</a>
    </div>
</body>
</html>
