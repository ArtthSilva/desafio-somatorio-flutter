import 'package:escribo_desafio/exceptions/numeros_nao_positivos_exception.dart';
import 'package:flutter/material.dart';

class CalculoController extends ChangeNotifier {
  int resultado = 0;
  bool mostrarResultado = false;

  void somatorioDivisiveis(int valor) {
    int soma = 0;
    if (valor <= 0) {
      throw NumeroNaoPositivoException('o número tem que ser positivo');
    }
    for (var i = 0; i < valor; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        soma += i;
      }
    }
    resultado = soma;
    mostrarResultado = true; 
    notifyListeners();
  }
}
