import 'package:escribo_desafio/controller/calculo_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Calculo Controller testes', () {
    test('O resultado do cálculo deve ser 23 para o valor 10', () {
      final calculoController = CalculoController();
      calculoController.somatorioDivisiveis(10);
      expect(calculoController.resultado, 23);
    });

    test('O resultado do cálculo deve ser 33 para o valor 11', () {
      final calculoController = CalculoController();
      calculoController.somatorioDivisiveis(11);
      expect(calculoController.resultado, 33);
    });

    test('caso o número implementado na função seja negativo ou neutro', () {
      final calculoController = CalculoController();
      expect(
          () => calculoController.somatorioDivisiveis(-5),
          throwsA(isA<Exception>().having(
              (e) => e.toString(),
              'mensagem de exceção',
              'NumeroNaoPositivoException: o número tem que ser positivo')));
    });
  });
}
