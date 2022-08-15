import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> words = File('words.txt').readAsLinesSync();
  final random = Random();
  print(words[random.nextInt(words.length)]);
}
