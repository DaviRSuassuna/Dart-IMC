import 'package:meu_app_imc/classes/pessoa.dart';
import 'package:meu_app_imc/utils/utils.dart' as utils;

void main(List<String> arguments) {
  bool option = false;
  do {
    print("\n\n\n\n\n-------Calculadora de IMC-------\n");

    var nome = utils.lerStringPrint("Digite o nome da pessoa: ");
    var peso = utils.lerDoublePrint("Digite o peso do(a) $nome [em kg]: ");
    var altura = utils.lerDoublePrint("Digite a altura do(a) $nome [em metros]: ");
  
    var pessoa = new Pessoa(nome, peso, altura);

    print(pessoa);

    option = utils.continuarOuSair(text: "\nQuer fazer outro calculo de IMC [S: sim / N: não]: ");
  } while (option);
  print("Saindo...");

}
