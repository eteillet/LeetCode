class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        result = ""
        i = 0
        while i < len(strs[0]):
            w = 0
            c = strs[0][i]
            while w < len(strs):
                if i >= len(strs[w]) or strs[w][i] != c:
                    return result
                w += 1
            result += c
            i += 1
        return result
