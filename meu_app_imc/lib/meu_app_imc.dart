String tabelaIMC(double imc) {
  String resultado = "";
  if (imc < 16) {
    resultado = "Magreza grau III";
  } else if (imc >= 16 && imc < 17) {
    resultado = "Magreza grau II";
  } else if (imc >= 17 && imc < 18.5) {
    resultado = "Magreza grau I";
  } else if (imc >= 18.5 && imc < 25) {
    resultado = "Saudável";
  } else if (imc >= 25 && imc < 30) {
    resultado = "Pré-obesidade";
  } else if (imc >= 30 && imc < 35) {
    resultado = "Obesidade grau I";
  } else if (imc >= 35 && imc < 40) {
    resultado = "Obesidade grau II";
  } else {
    resultado = "Obesidade grau III";
  }
  return resultado;
}
