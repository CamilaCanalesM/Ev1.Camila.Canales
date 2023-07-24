
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculadora de Interés Simple</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body {
            background-color: #f5f5f5;
        }

        .calculator-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 50px auto;
            max-width: 400px;
        }

        .calculator-container h1 {
            text-align: center;
            margin-bottom: 20px; /* Ajuste el margen inferior del h1 */
            color: #061b31f1;
            font-size: 24px; /* Ajuste el tamaño de la fuente del h1 */
            font-weight: bold;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px; /* Agregue espacio entre los campos de entrada */
        }

        .btn-calculate {
            background-color: #007bff;
            border-color: #007bff;
            font-weight: bold;
        }

        .btn-calculate:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="calculator-container">
        <h1>Calculadora de Interés Simple</h1>
        <form action="CalculadoraInteresSimpleServlet" method="post">
            <div class="form-group">
                <label for="capital">Capital:</label>
                <input type="number" class="form-control" id="capital" name="capital" required step="1" min="0" placeholder="Ej: 1000000">
            </div>
            <div class="form-group">
                <label for="tasaInteresAnual">Tasa de Interés Anual (%):</label>
                <input type="number" class="form-control" id="tasaInteresAnual" name="tasaInteresAnual" required>
            </div>
            <div class="form-group">
                <label for="numeroAnios">Número de Años:</label>
                <input type="number" class="form-control" id="numeroAnios" name="numeroAnios" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-calculate">Calcular</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>
