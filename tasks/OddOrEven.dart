import 'dart:io';

void main() {
  stdout.write('please input number');
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print('even');
  } else {
    print('odd');
  }
}
