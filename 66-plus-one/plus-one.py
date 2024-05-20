class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        current_number_str = ""
        for n in digits:
            current_number_str += str(n)
        new_number_str = str(int(current_number_str) + 1)
        return [int(x) for x in new_number_str]