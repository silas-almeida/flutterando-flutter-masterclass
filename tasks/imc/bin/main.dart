import 'dart:io';

double calculatesImc(double weight, double height) {
  return weight / height;
}

void main() {
  print('Peso:');
  final String? weight = stdin.readLineSync();
  print('Altura:');
  final String? height = stdin.readLineSync();

  if (weight == null || height == null || height == 0) {
    print('Valores inválidos!');
  } else {
    try {
      final double imc = calculatesImc(double.parse(weight), double.parse(height));
      print("IMC = $imc");
    } catch (_) {
      print('Valores inválidos!');
    }
  }
}
