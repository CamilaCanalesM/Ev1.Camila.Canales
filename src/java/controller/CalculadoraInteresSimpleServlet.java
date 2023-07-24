package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.NumberFormat;
import java.util.Locale;

import model.CalculadoraInteresSimpleModel; 

@WebServlet("/CalculadoraInteresSimpleServlet")
public class CalculadoraInteresSimpleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    double capital = Double.parseDouble(request.getParameter("capital"));
    double tasaInteresAnual = Double.parseDouble(request.getParameter("tasaInteresAnual"));
    int numeroAnios = Integer.parseInt(request.getParameter("numeroAnios"));

    CalculadoraInteresSimpleModel model = new CalculadoraInteresSimpleModel();
    double interesSimple = model.calcularInteresSimple(capital, tasaInteresAnual, numeroAnios);

    // Formatear el resultado a pesos chilenos (CLP) antes de establecerlo como atributo en el request
    NumberFormat clpFormat = NumberFormat.getInstance(new Locale("es", "CL"));
    String interesSimpleFormatted = clpFormat.format(interesSimple);
    
    request.setAttribute("interesSimple", interesSimpleFormatted);
    request.getRequestDispatcher("resultado.jsp").forward(request, response);
}
}
