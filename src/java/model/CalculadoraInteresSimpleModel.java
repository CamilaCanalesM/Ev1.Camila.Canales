package model;

public class CalculadoraInteresSimpleModel {
    public double calcularInteresSimple(double capital, double tasaInteresAnual, int numeroAnios) {
        return capital * (tasaInteresAnual / 100) * numeroAnios;
    }
}