import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  final random = Random();
  int randomNum = random.nextInt(8) + 1;

  while (true) {
    stdout.write('Random num is ? : ');
    int inputNum = getNum();

    if (inputNum == randomNum) {
      print('Great!');
      break;
    }

    if (inputNum > randomNum) {
      print('Your selected number is larger.');
    }

    if (inputNum < randomNum) {
      print('Your selected number is smaller.');
    }
  }
}

int getNum() {
  int inputNum;

  try {
    inputNum = int.parse(stdin.readLineSync()!);
  } catch (e) {
    stdout.write('Please valid number : ');
    inputNum = getNum();
  }

  return inputNum;
}
