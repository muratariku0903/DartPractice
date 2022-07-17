import 'dart:io';

void main(List<String> args) {
  stdout.write('What is your name?');
  var name = stdin.readLineSync();

  print("Hi, $name!");

  stdout.write('What is your age?');
  String? age = stdin.readLineSync();

  var toHundred = 100 - int.parse(age);
  print('You have $toHundred years to be 100');
}
