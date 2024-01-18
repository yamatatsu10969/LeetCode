class Solution {
  List<String> stack = [];
  bool isValid(String s) {
    for (final e in s.split('')) {
      if (e == '(' || e == '[' || e == '{') {
        stack.add(e);
      } else {
        if (stack.isEmpty) return false;
        String last = stack.last;
        if ((e == ']' && last == '[') ||
            (e == ')' && last == '(') ||
            (e == '}' && last == '{')) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}