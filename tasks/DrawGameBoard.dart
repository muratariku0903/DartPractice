import 'dart:io';
import '../utils/index.dart';

void main(List<String> args) {
  stdout.write('Please input game size : ');
  int size = getInputNum();
  drawSquare(size);
}

void drawSquare(int size) {
  String horizontalBar = '---';
  String verticalBar = '|';
  // horizontalPertition = horizontalBar * size;
  String horizontalPertition = '';
  for (var hb = 0; hb < size; hb++) {
    horizontalPertition += horizontalBar + ' ';
  }
  // horizontalPertition = verticalBar * (size + 1);
  String verticalPertition = '';
  for (var vb = 0; vb < size + 1; vb++) {
    verticalPertition += verticalBar + '  ';
  }

  for (var row = 0; row < size; row++) {
    print(horizontalPertition);
    print(verticalPertition);
  }

  print(horizontalPertition);
}
