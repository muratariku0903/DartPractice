import 'dart:io';
import '../utils/index.dart';

void main(List<String> args) {
  int randomNum = getRandomNumWithDigit2(digit: 4);
  print(randomNum);

  stdout.write('Please guess number : ');
  int guessNum = getInputNum(min: 1000, max: 9999);
  while (guessNum != randomNum) {
    List<int> res = getCowsAndBulls(guessNum, randomNum);
    print('Cows : ${res[0]}, Bulls : ${res[1]}');
    stdout.write('Please guess number : ');
    guessNum = getInputNum(min: 1000, max: 9999);
  }

  print('Game clear!');
}

List<int> getCowsAndBulls(int guessNum, int answerNum) {
  int cows = 0;
  int bulls = 0;
  List<String> guessNumDigits = guessNum.toString().split('');
  List<String> answerNumDigits = answerNum.toString().split('');

  for (var i = 0; i < 4; i++) {
    if (guessNumDigits[i] == answerNumDigits[i]) {
      cows++;
    } else if (answerNumDigits.contains(guessNumDigits[i])) {
      bulls++;
    }
  }

  return [cows, bulls];
}
