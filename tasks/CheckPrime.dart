import 'dart:io';
import '../utils/index.dart';

void main(List<String> args) {
  stdout.write('Please input number : ');
  int inputNum = getInputNum();
  bool isPrime = check(inputNum);
  print(isPrime ? 'Prime' : 'Not Prime');
}

bool check(int checkNum) {
  if (checkNum < 2) return false;

  bool isPrime = true;

  for (var num = 2; num < checkNum; num++) {
    if (checkNum % num == 0) {
      return false;
    }
  }

  return isPrime;
}
