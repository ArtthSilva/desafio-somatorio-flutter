sealed class CalculoDeValoresException implements Exception{
  final String mensagem;
  final StackTrace? stackTrace;
  CalculoDeValoresException(this.mensagem, [this.stackTrace]);
  @override
   String toString() {
    return "$runtimeType: $mensagem${stackTrace == null ? '' : '\n$stackTrace'}";
  }
}

class NumeroNaoPositivoException extends CalculoDeValoresException {
  NumeroNaoPositivoException(super.mensagem, [super.stackTrace]);
}