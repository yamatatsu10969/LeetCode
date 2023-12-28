class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        ranArray = list(ransomNote)
        magArray = list(magazine)
        i = 0
        j = 0
        while i <= len(magArray) - 1:
            while j <= len(ranArray) - 1:
                if not ranArray:
                    return True
                elif magArray[i] == ranArray[j]:
                    del ranArray[j]
                    break
                else:
                    j += 1
            i += 1
            j = 0
        return not ranArray






