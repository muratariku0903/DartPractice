void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> ans = [];

  // 1
  for (var i = 0; i < nums.length; i++) {
    if (i % 2 == 0) {
      ans.add(nums[i]);
    }
  }

  // 2
  int i = 0;
  for (var num in nums) {
    if (++i % 2 == 0) {
      ans.add(num);
    }
  }

  print(ans);
}
