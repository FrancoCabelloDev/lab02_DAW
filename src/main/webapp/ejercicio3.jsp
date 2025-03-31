<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.text.DecimalFormat" %>
<%

    double tarifa = Double.parseDouble(request.getParameter("prenda"));
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));
    double bonificacion = Double.parseDouble(request.getParameter("categoria"));


    double ingresos = tarifa * cantidad;
    double descuentoSeguro = Math.min(ingresos * 0.02, 20.00);
    double descuentoImpuestos = ingresos * 0.09;
    double descuentoSolidaridad = ingresos * 0.01;


    if (cantidad <= 700) {
        bonificacion = 0.0;
    }


    double sueldoNeto = ingresos + bonificacion - (descuentoSeguro + descuentoImpuestos + descuentoSolidaridad);


    DecimalFormat df = new DecimalFormat("0.00");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado3</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex justify-center items-center h-screen">
<div class="bg-white p-6 rounded-lg shadow-md w-96">
    <h2 class="text-xl font-bold mb-4 text-center">Resultados</h2>
    <p><strong>Ingresos:</strong> S/. <%= df.format(ingresos) %></p>
    <p><strong>Bonificación:</strong> S/. <%= df.format(bonificacion) %></p>
    <p><strong>Descuento Seguro:</strong> S/. <%= df.format(descuentoSeguro) %></p>
    <p><strong>Descuento Impuestos:</strong> S/. <%= df.format(descuentoImpuestos) %></p>
    <p><strong>Descuento Solidaridad:</strong> S/. <%= df.format(descuentoSolidaridad) %></p>
    <hr>
    <p class="text-lg font-bold"><strong>Sueldo Neto:</strong> S/. <%= df.format(sueldoNeto) %></p>
    <a href="ejercicio3.html" class="block mt-4 text-center bg-blue-500 text-white py-2 rounded hover:bg-blue-600">Calcular Otro</a>
</div>
</body>
</html>
