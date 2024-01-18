class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String c = s[i];
      if (['(', '[', '{'].contains(c)) {
        stack.add(c);
      } else if (stack.isEmpty) {
        return false;
      } else if (c == ']') {
        final l = stack.removeLast();
        if (l != '[') return false;
      } else if (c == ')') {
        final l = stack.removeLast();
        if (l != '(') return false;
      } else if (c == '}') {
        final l = stack.removeLast();
        if (l != '{') return false;
      } else {
        return false;
      }
    }
    return stack.isEmpty;
  }
}