import 'dart:io';
import '../constants/index.dart';
import '../utils/index.dart';

void main(List<String> args) {
  List<int> nums = [];
  for (var i = 0; i < 3; i++) {
    stdout.write('Please input number : ');
    int num = getInputNum();
    nums.add(num);
  }

  int max = -intMaxValue;
  for (var num in nums) {
    if (num > max) {
      max = num;
    }
  }

  print('Max number is : $max');

  // another method
  nums.sort();
  print('Max number is : ${nums.last}');
}
