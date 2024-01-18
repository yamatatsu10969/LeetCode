class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (final e in s.split('')) {
      if (['(', '[', '{'].contains(e)) {
        stack.add(e);
      } else {
        if (stack.isEmpty) return false;
        if ((e == ']' && stack.last == '[') ||
            (e == ')' && stack.last == '(') ||
            (e == '}' && stack.last == '{')) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}