import 'dart:io';

void main(List<String> args) {
  stdout.write('PlayerA, please input RPS : ');
  String rpsA = getRPS();
  stdout.write('PlayerB, please input RPS : ');
  String rpsB = getRPS();

  bool isDraw = rpsA == rpsB;
  String winner = '';

  if (rpsA == 'rock') {
    winner = rpsB == 'scissors' ? 'A' : 'B';
  } else if (rpsA == 'scissors') {
    winner = rpsB == 'paper' ? 'A' : 'B';
  } else if (rpsA == 'paper') {
    winner = rpsB == 'rock' ? 'A' : 'B';
  }

  if (isDraw) {
    print('draw');
  } else {
    print('winner is ${winner}');
  }
  
  stdout.write('continue? : ');
  bool isContinue = stdin.readLineSync().toString() == 'y';
  if (isContinue) main(args);
}

String getRPS() {
  List<String> rpses = ['rock', 'paper', 'scissors'];

  String rps = stdin.readLineSync().toString();
  if (!rpses.contains(rps)) {
    print('Invalid input. Please in rock paper and scissors');
    stdout.write('PlayerA, please input RPS : ');
    rps = getRPS();
  }

  return rps;
}
