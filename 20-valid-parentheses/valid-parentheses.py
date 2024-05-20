class Solution:
    def isValid(self, s: str) -> bool:
        brackets = {')' : '(', '}' : '{' , ']' : '['}
        result = []

        for c in s:
            if c in brackets.values():                     # si c ouvre (valeur) on ajoute a la liste
                result.append(c)
            elif result and brackets[c] == result[-1]:     # si le dernier element de la liste est la valeur de c (cle)
                result.pop()                               # on supprime la valeur de la liste
            else:
                return False
            
        return result == []


            
