import 'dart:convert';
import 'dart:math';

void main(List<String> args) {
  String password = generatePassword1(len: 20);
  List<int> nums = List.generate(10, (index) => index);
  print(nums);
  generatePassword2();
  print(password);
}

String generatePassword1({int len: 10}) {
  if (len <= 0) throw ('Please set valid password len.');

  final random = Random();
  print(Random.secure());
  String password = '';
  for (var i = 0; i < len; i++) {
    int charCode = random.nextInt(124);
    password += String.fromCharCode(charCode);
  }

  return password;
}

String generatePassword2({int len: 10}) {
  final random = Random.secure();
  List<int> randomNums = List.generate(len, (_) => random.nextInt(255));
  List<String> randomStrs = base64UrlEncode(randomNums).split('').toList();
  randomStrs.shuffle();
  String password = randomStrs.join('');

  return password;
}
