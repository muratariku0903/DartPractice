import 'dart:math';

void main(List<String> args) {
  String password = generatePassword(size: 20);
  print(password);
}

String generatePassword({int size: 10}) {
  final random = Random();
  print(Random.secure());
  String password = '';
  for (var i = 0; i < size; i++) {
    int charCode = random.nextInt(124);
    password += String.fromCharCode(charCode);
  }

  return password;
}
