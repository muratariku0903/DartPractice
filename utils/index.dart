import 'dart:io';

int getInputNum() {
  int inputNum;

  try {
    inputNum = int.parse(stdin.readLineSync()!);
  } catch (e) {
    stdout.write('Please input valid number : ');
    inputNum = getInputNum();
  }

  return inputNum;
}
