<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Résultats - Exercice 6</title>
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
            background-color: #FFFFE0;
            border: 2px groove #808080;
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
        }
        .solution-success {
            background-color: #00FF00;
            font-weight: bold;
        }
        .solution-warning {
            background-color: #FFFF00;
            font-weight: bold;
        }
        .solution-error {
            background-color: #FF0000;
            color: white;
            font-weight: bold;
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
            margin-top: 15px;
        }
        .button:active {
            border-style: inset;
            border-color: #000000 #FFFFFF #FFFFFF #000000;
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
                        <td class="titlebar">Exercice 6 - Résultats de l'équation</td>
                    </tr>
                    <tr>
                        <td class="content-area">
                            <h1>Résultats de l'équation</h1>

                            <div class="equation-display">
                                <%= request.getAttribute("a") %>X² + <%= request.getAttribute("b") %>X + <%= request.getAttribute("c") %> = 0
                            </div>

                            <table class="result-table" cellpadding="5" cellspacing="0">
                                <tr>
                                    <th colspan="2">Détails du calcul</th>
                                </tr>
                                <tr>
                                    <td width="50%"><b>Coefficient A :</b></td>
                                    <td><%= request.getAttribute("a") %></td>
                                </tr>
                                <tr>
                                    <td><b>Coefficient B :</b></td>
                                    <td><%= request.getAttribute("b") %></td>
                                </tr>
                                <tr>
                                    <td><b>Coefficient C :</b></td>
                                    <td><%= request.getAttribute("c") %></td>
                                </tr>
                                <tr>
                                    <td><b>Discriminant (Δ) :</b></td>
                                    <td><%= String.format("%.4f", request.getAttribute("delta")) %></td>
                                </tr>
                            </table>

                            <%
                                int nbSolutions = (Integer) request.getAttribute("nbSolutions");
                            %>

                            <table class="result-table" cellpadding="5" cellspacing="0">
                                <tr>
                                    <th colspan="2">Solutions</th>
                                </tr>
                                <%
                                    if (nbSolutions == 2) {
                                %>
                                    <tr class="solution-success">
                                        <td colspan="2" align="center">
                                            L'équation admet <b>DEUX SOLUTIONS RÉELLES DISTINCTES</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%"><b>X₁ =</b></td>
                                        <td><%= String.format("%.4f", request.getAttribute("x1")) %></td>
                                    </tr>
                                    <tr>
                                        <td><b>X₂ =</b></td>
                                        <td><%= String.format("%.4f", request.getAttribute("x2")) %></td>
                                    </tr>
                                <%
                                    } else if (nbSolutions == 1) {
                                %>
                                    <tr class="solution-warning">
                                        <td colspan="2" align="center">
                                            L'équation admet <b>UNE SOLUTION DOUBLE</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%"><b>X₀ =</b></td>
                                        <td><%= String.format("%.4f", request.getAttribute("x0")) %></td>
                                    </tr>
                                <%
                                    } else {
                                %>
                                    <tr class="solution-error">
                                        <td colspan="2" align="center">
                                            <b>AUCUNE SOLUTION RÉELLE</b> (Δ &lt; 0)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            Les solutions sont complexes (nombres imaginaires)
                                        </td>
                                    </tr>
                                <%
                                    }
                                %>
                            </table>

                            <center>
                                <a href="exercice6" class="button">◄ Résoudre une nouvelle équation</a>
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
