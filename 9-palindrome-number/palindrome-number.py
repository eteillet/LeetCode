class Solution:
    def isPalindrome(self, x: int) -> bool:
        s = str(x)
        for i in range(0, int(len(s) / 2)):
            if s[i] != s[-i - 1]:
                return False
        return True