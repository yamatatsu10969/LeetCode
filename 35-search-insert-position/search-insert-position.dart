class Solution {
  int searchInsert(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;
    int mid = (high - low) ~/ 2 + low;

    while (low <= high) {
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
      mid = (high - low) ~/ 2 + low;
    }

    return low;
  }
}