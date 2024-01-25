class Solution {
  int searchInsert(List<int> nums, int target) {
    int i = 0;
    for (i = 0; i < nums.length; i++) {
      if (nums[i] >= target) {
        return i;
      }
    }
    return i;
  }
}