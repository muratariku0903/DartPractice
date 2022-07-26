void main(List<String> args) {
  List<int> nums1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> nums2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  Set<int> ans = {};
  for (var num1 in nums1) {
    for (var num2 in nums2) {
      if (num1 == num2) {
        ans.add(num1);
        break;
      }
    }
  }

  // Set.from(nums1).intersection(Set.from(nums2)).toList();

  print(ans.toList());
}
