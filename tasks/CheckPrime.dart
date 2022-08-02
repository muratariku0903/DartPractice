import 'dart:io';

void main(List<String> args) {
  stdout.write('Please input number : ');
  int inputNum = getNum();
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

int getNum() {
  int inputNum;

  try {
    inputNum = int.parse(stdin.readLineSync()!);
  } catch (e) {
    stdout.write('Please input valid number : ');
    inputNum = getNum();
  }

  return inputNum;
}
