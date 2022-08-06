import '../utils/index.dart';

void main(List<String> args) {
  List<int> nums = getRandomNums(min: -10, max: -1);
  print(nums);
  List<int> res = getUniqueNums2(nums);

  List.generate(10, (_) => 10);

  print(res);
}

List<int> getUniqueNums1(List<int> nums) {
  List<int> uniqueNums = [];

  for (var i = 0; i < nums.length; i++) {
    if (!uniqueNums.contains(nums[i])) {
      uniqueNums.add(nums[i]);
    }
  }

  return uniqueNums;
}

List<int> getUniqueNums2(List<int> nums) {
  return Set<int>.from(nums).toList();
}
