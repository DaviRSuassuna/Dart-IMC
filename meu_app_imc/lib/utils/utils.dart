import 'dart:io';
import 'dart:convert';

String lerString() {
  var line = stdin.readLineSync(encoding: utf8);
  if (line != null) {
    return line;
  } else {
    return "";
  }
}

String lerStringPrint(String text) {
  print(text);
  return lerString();
}

double lerDouble() {
  var line = lerString();
  var resultado = 0.0;
  if (line.trim().isNotEmpty) {
    resultado = double.parse(line);
  }
  return resultado;
}

double lerDoublePrint(String text) {
  print(text);
  return lerDouble();
}

bool continuarOuSair({String? text, String? option}) {
  while (true) {
    if (text != null) {
      print(text);
    } 

    if (option == null || option.trim().isEmpty) {
      option = lerString();
      if (option.trim().isEmpty) {
        print("Não foi possível ler sua opção, digite novamente...");
        continue;
      }
    }

    option = option.toLowerCase();
    option = option[0].toUpperCase() + option.substring(1); 

    if (option == "Sim") {
      option = "S";
    } else if (option == "Não" || option == "Nao") {
      option = "N";
    }

    if (option == "S") {
      return true;
    } else if (option == "N") {
      return false;
    } else {
      print("Opção digitada inválida, tente novamente...");
      option = null;
    }
  }
}

void possibleErroString(String line) {
  try {
    if (line.trim().isEmpty) {
      throw ArgumentError("Linha vazia não é aceita...");
    }
  } catch (e) {
    print("Erro: $e");
  }
}

void possibleErroValor1(double valor1) {
  try {
    if (valor1 <= 0.0) {
    throw ArgumentError("O valor $valor1 não é aceito...");
    }
  } catch (e) {
    print("Erro: $e");
  }
}

void possibleErroValor2(double valor1, double valor2) {
  possibleErroValor1(valor1);
  possibleErroValor1(valor2);
}