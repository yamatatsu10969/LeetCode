class Solution {
  List<String> stack = [];
  bool isValid(String s) {
    for (final e in s.split('')) {
      if (e == '(' || e == '[' || e == '{') {
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