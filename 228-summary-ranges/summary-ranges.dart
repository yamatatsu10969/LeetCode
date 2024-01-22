class Solution {
  List<String> summaryRanges(List<int> nums) {
    if (nums.isEmpty) return [];
    var start = nums.first;
    var last = nums.first;
    final result = <String>[];
    for (final n in nums.getRange(1, nums.length)) {
      if (n == last + 1) {
        last = n;
      } else {
        if (start != last) {
          result.add('$start->$last');
        } else {
          result.add('$start');
        }
        start = n;
        last = n;
      }
    }
    if (start != last) {
      result.add('$start->$last');
    } else {
      result.add('$start');
    }
    return result;
  }
}
