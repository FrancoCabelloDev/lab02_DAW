<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado2</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center h-screen bg-gray-100">
<div class="bg-white p-6 rounded-lg shadow-lg w-96">
    <h2 class="text-xl font-bold mb-4 text-center">Resultado</h2>

    <%

        double sueldoBase = Double.parseDouble(request.getParameter("sueldo"));
        String estadoCivil = request.getParameter("estadoCivil");
        int numHijos = Integer.parseInt(request.getParameter("numHijos"));


        double porcentajeBonificacion = 0;
        if (estadoCivil.equals("Casado")) porcentajeBonificacion = 13;
        else if (estadoCivil.equals("Viudo")) porcentajeBonificacion = 15;
        else if (estadoCivil.equals("Soltero")) porcentajeBonificacion = 5;


        double bonificacionHijos = Math.min(numHijos * 1.5, 6);


        double sueldoNeto = sueldoBase + (sueldoBase * (porcentajeBonificacion + bonificacionHijos) / 100);
    %>

    <p><strong>Sueldo Base:</strong> <%= sueldoBase %> </p>
    <p><strong>Estado Civil:</strong> <%= estadoCivil %> </p>
    <p><strong>Número de Hijos:</strong> <%= numHijos %> </p>
    <p><strong>Bonificación Estado Civil:</strong> <%= porcentajeBonificacion %>%</p>
    <p><strong>Bonificación por Hijos:</strong> <%= bonificacionHijos %>%</p>
    <p class="text-lg font-bold mt-4">💰 Neto a Cobrar: <%= sueldoNeto %> </p>

    <a href="ejercicio2.html" class="block mt-4 text-blue-500 text-center">Volver</a>
</div>
</body>
</html>
