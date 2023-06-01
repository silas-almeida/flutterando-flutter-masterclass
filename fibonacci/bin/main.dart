import 'dart:io';

List<int> fibonacci(List<int> fibonacciSequence, int lenghtLimit) {
  if (fibonacciSequence.length == lenghtLimit) return fibonacciSequence;
  if (fibonacciSequence.isEmpty) {
    fibonacciSequence.add(0);
    return fibonacci(fibonacciSequence, lenghtLimit);
  } else {
    final int currentLenght = fibonacciSequence.length;
    if (currentLenght == 1) {
      fibonacciSequence.add(1);
      return fibonacci(fibonacciSequence, lenghtLimit);
    } else {
      fibonacciSequence
          .add(fibonacciSequence.last + fibonacciSequence[currentLenght - 2]);
      return fibonacci(fibonacciSequence, lenghtLimit);
    }
  }
}

void main() {
  final List<int> initialList = [];
  print('Informe quantos caracteres terá a sequência de Fibonacci: ');
  final String? lenghtLimitString = stdin.readLineSync();
  final int lengthLimit = int.parse(lenghtLimitString ?? '1');
  final fibonacciList = fibonacci(initialList, lengthLimit);
  print('Sequência Fibonacci com $lengthLimit número(s): \n $fibonacciList');
}
