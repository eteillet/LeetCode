class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if len(haystack) < len(needle):
            return -1
        if haystack == needle:
            return 0
        
        start = 0   # debut parcours haystack
        i = 0       # parcours haystack
        j = 0       # parcours needle
        while i < len(haystack):
            if haystack[i] != needle[j]:
                start += 1
                i = start
                j = 0
            else:
                i += 1
                j += 1
                if j == len(needle):
                    return i - len(needle) # on retourne l'index actuel de haystack mois la taille de needle
        
        return -1