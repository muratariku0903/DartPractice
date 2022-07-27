import 'dart:ffi';

void main(List<String> args) {
  String str = 'hhurhh';

  print(isPalindrome(str));
}

bool isPalindrome(String str) {
  List<String> strList = str.split('');
  int left = 0;
  int right = strList.length - 1;

  while (left < right) {
    if (strList[left] != strList[right]) return false;
    left++;
    right--;
  }

  return true;
}
