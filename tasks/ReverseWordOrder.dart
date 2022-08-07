import 'dart:io';

void main(List<String> args) {
  stdout.write('Please input string : ');
  String inputStr = stdin.readLineSync().toString();
  String res = getReversedString(inputStr);
  print(res);
}

String getReversedString(String str) {
  return str.split(' ').reversed.toList().join(' ');
}
