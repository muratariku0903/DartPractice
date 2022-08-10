import 'dart:io';
import 'dart:math';

int getInputNum({int? min, int? max}) {
  int inputNum;

  try {
    inputNum = int.parse(stdin.readLineSync()!);
    bool isValid = validateInputNum(min, max, inputNum);
    if (!isValid) throw ('');
  } catch (e) {
    stdout.write('Please input valid number : ');
    inputNum = getInputNum(min: min, max: max);
  }

  return inputNum;
}

List<int> getRandomNums({int min: 0, int max: 100, int len: 10}) {
  List<int> nums = [];

  if (min > max) {
    print('Please min <= max');
    return nums;
  }

  final random = Random();
  for (var i = 0; i < len; i++) {
    int randomNum = random.nextInt(max + 1 - min) + min;
    nums.add(randomNum);
  }

  return nums;
}

int getRandomNumWithDigit({int digit: 1}) {
  if (digit <= 0) throw ('Invalid digit');

  final random = Random();
  int randomNum = 0;
  for (var i = 0; i < digit; i++) {
    int digitNum = random.nextInt(10);
    bool isLastDigit = digit - 1 == i;
    while (isLastDigit && digitNum == 0) digitNum = random.nextInt(10);
    randomNum += digitNum * pow(10, i).toInt();
  }

  return randomNum;
}

int getRandomNumWithDigit2({int digit: 1}) {
  int max = pow(10, digit).toInt();
  int min = digit == 1 ? 0 : max ~/ 10;

  return getRandomWithRange(min, max);
}

int getRandomWithRange(int min, int max) {
  return Random().nextInt(max - min) + min;
}

bool validateInputNum(int? min, int? max, int inputNum) {
  if (min != null && max != null) {
    if (inputNum < min || inputNum > max) {
      print('Please inputNum ${min}~${max}');
      return false;
    }
  } else if (min != null) {
    if (inputNum < min) {
      print('Please inputNum over ${min}');
      return false;
    }
  } else if (max != null) {
    if (inputNum > max) {
      print('Please inputNum under ${max}');
      return false;
    }
  }

  return true;
}
