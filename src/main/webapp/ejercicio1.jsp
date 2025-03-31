<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%

    String colegio = request.getParameter("colegio");
    String categoria = request.getParameter("categoria");
    double cuota = Double.parseDouble(request.getParameter("cuota"));


    int descuento = 0;
    if ("Nacional".equals(colegio)) {
        if ("A".equals(categoria)) descuento = 50;
        else if ("B".equals(categoria)) descuento = 40;
        else if ("C".equals(categoria)) descuento = 30;
    } else if ("Particular".equals(colegio)) {
        if ("A".equals(categoria)) descuento = 25;
        else if ("B".equals(categoria)) descuento = 20;
        else if ("C".equals(categoria)) descuento = 15;
    }


    double descuentoAplicado = cuota * descuento / 100;
    double totalPagar = cuota - descuentoAplicado;
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center min-h-screen bg-gray-100">
<div class="bg-white p-6 rounded-lg shadow-md w-96 text-center">
    <p class="text-gray-700">Colegio: <strong><%= colegio %></strong></p>
    <p class="text-gray-700">Categoría: <strong><%= categoria %></strong></p>
    <p class="text-gray-700">Cuota Inicial: <strong>S/ <%= String.format("%.2f", cuota) %></strong></p>
    <p class="text-gray-700">Descuento Aplicado: <strong><%= descuento %> %</strong></p>
    <p class="text-gray-700">Monto Descontado: <strong>S/ <%= String.format("%.2f", descuentoAplicado) %></strong></p>
    <p class="text-xl font-semibold text-blue-600 mt-4">Total a Pagar: S/ <%= String.format("%.2f", totalPagar) %></p>
    <a href="ejercicio1.html" class="mt-4 inline-block bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600">
        Volver
    </a>
</div>
</body>
</html>
