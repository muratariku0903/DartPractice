import 'dart:io';

void main(List<String> args) {
  stdout.write('please input number : ');
  try {
    int num = int.parse(stdin.readLineSync()!);
    for (var i = 1; i <= num; i++) {
      if (num % i == 0) print(i);
    }
  } catch (e) {
    print('please input valid number');
    print(e);
  }
}
