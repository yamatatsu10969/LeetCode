class Solution {
    String gcdOfStrings(String str1, String str2) {
    final maxLength = max(str1.length, str2.length);
    final longerStr = maxLength == str1.length ? str1 : str2;
    final shorterStr = maxLength != str1.length ? str1 : str2;

    for (int i = 0; i < shorterStr.length; i++) {
        final newShorterStr =
            shorterStr.replaceRange(shorterStr.length - i, shorterStr.length, '');
        final isDividableLongerStr =
            longerStr.replaceAll(newShorterStr, '').isEmpty;
        final isDividableShorterStr =
            shorterStr.replaceAll(newShorterStr, '').isEmpty;
        if (isDividableShorterStr && isDividableLongerStr) {
            return newShorterStr;
        }
    }

    return '';
  }
}