import string
class Solution:
    def isPalindrome(self, s: str) -> bool:
        translator = str.maketrans('', '', string.punctuation)
        stripped_string = s.translate(translator)
        lowercase_str = stripped_string.replace(" ", "").lower()
        if lowercase_str == "":
            return True
        str_arr = list(lowercase_str)
        i = 0
        last_index = len(str_arr) - 1
        while i < last_index - i:
            if str_arr[i] != str_arr[last_index - i]:
                return False
            i += 1
        return True