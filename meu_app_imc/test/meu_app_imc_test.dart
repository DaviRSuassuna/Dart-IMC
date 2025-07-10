import 'package:test/test.dart';
import 'package:meu_app_imc/classes/pessoa.dart';
import 'package:meu_app_imc/utils/utils.dart' as utils;

void main() {
  group('Teste de valores ||', () {
    var valores = {
      {'nome': "Davi", 'peso': 68, 'altura': 1.84}: "{Nome: Davi, Peso: 68.0, Altura: 1.84, Número de IMC: 20.09, Resultado do IMC: Saudável}",
      {'nome': "Diana", 'peso': 76, 'altura': 1.65}: "{Nome: Diana, Peso: 76.0, Altura: 1.65, Número de IMC: 27.92, Resultado do IMC: Pré-obesidade}",
      {'nome': "João", 'peso': 10, 'altura': 10}: "{Nome: João, Peso: 10.0, Altura: 10.0, Número de IMC: 0.1, Resultado do IMC: Magreza grau III}"
    };
    valores.forEach((numeros, expected) {
      test('Entreada $numeros | Esperando $expected', () {
        expect(Pessoa(
          numeros['nome'].toString(), 
          double.parse(numeros['peso'].toString()), 
          double.parse(numeros['altura'].toString())).toString(), 
        equals(expected));
      });
    });
  });

  group('Teste de continuar ou sair do programa ||', () {
    var valores = {
      {'option': "sim"}:true,
      {'option': "não"}:false,
    };
    valores.forEach((options, expected) {
      test('Entrada: $options | Esperando: $expected', () {
        expect(utils.continuarOuSair(option: options["option"].toString()), equals(expected));
      });
    }); 
  });
}
