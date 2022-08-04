import 'dart:io';
import '../utils/index.dart';

void main(List<String> args) {
  stdout.write('How many fibo numbers? : ');
  int inputNum = getInputNum(min: 1, max: 9);
  int res = fibo(inputNum);

  print(res);
}

int fibo(int cnt) {
  List<int> dp = [1, 1];

  for (var i = 2; i < cnt; i++) {
    dp.add(dp[i - 2] + dp[i - 1]);
  }

  return dp[cnt - 1];
}
