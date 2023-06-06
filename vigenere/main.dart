import 'dart:io';
import 'dart:math';

const alphabet = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'X',
  'Y',
  'Z'
];

class SecretIt {
  String getKey(int lenght) {
    var sortedAlphabet = [...alphabet];
    sortedAlphabet.shuffle();
    final keys = List<String>.generate(
        lenght, (i) => sortedAlphabet[Random().nextInt(lenght)]);
    return keys.join();
  }
}

void main(List<String> args) {
  final secretIt = SecretIt();
  String key;

  print('Digite o texto a ser criptografado: ');
  final String? text = stdin.readLineSync();

  if (text != null) {
    key = secretIt.getKey(text.length);
  }

  print('foi');
}
