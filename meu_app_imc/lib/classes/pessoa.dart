import 'dart:core';
import 'dart:math' as math;
import 'package:meu_app_imc/meu_app_imc.dart';
import 'package:meu_app_imc/utils/utils.dart' as utils;

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    utils.possibleErroValor1(peso);
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    utils.possibleErroValor1(altura);
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double getNumIMC(double peso, double altura) {
    double imc = 0.0;
    if (peso != 0.0 || altura != 0.0) {
      imc = peso / math.pow(altura, 2);
      imc = double.parse(imc.toStringAsFixed(2).padLeft(5, '0'));
    } 
    return imc;
  }

  String getResultadoIMC() {
    double imc = getNumIMC(_peso, _altura);
    return tabelaIMC(imc);
  }

  Pessoa(
    String nome,
    double peso,
    double altura) {
      _nome = nome;
      _peso = peso;
      _altura = altura;
    utils.possibleErroString(nome);
    utils.possibleErroValor2(peso, altura);
    }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
      "Número de IMC": getNumIMC(_peso, _altura),
      "Resultado do IMC": getResultadoIMC(),
    }.toString();
  }
}