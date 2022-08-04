import 'dart:io';

int getInputNum({int? min, int? max}) {
  int inputNum;

  try {
    inputNum = int.parse(stdin.readLineSync()!);
    bool isValid = validateInputNum(min, max, inputNum);
    if (!isValid) throw ('');
  } catch (e) {
    stdout.write('Please input valid number : ');
    inputNum = getInputNum(min, max: max);
  }

  return inputNum;
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
