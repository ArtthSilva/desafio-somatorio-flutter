import 'package:flutter/material.dart';

class CalculoController extends ChangeNotifier{
   int resultado = 0;
   bool mostrarResultado = false;

  
void calculate(int valor) {
  List<int> numerosDivisiveis = [];
  if (valor <= 0) {
    throw Exception('o número tem que ser positivo');
  }
  
  for (var i = 0; i < valor; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      numerosDivisiveis.add(i);
    }
  }
  mostrarResultado = true;
 resultado = numerosDivisiveis.fold(0, (antecessor, atual) => antecessor += atual); 
 notifyListeners();   
}
}