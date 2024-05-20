class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        len_original_list = len(nums)
        while val in nums:
            nums.remove(val)
        len_new_list = len(nums)
        for i in range(len_original_list - len_new_list):
            nums.append(-1)
        return len_new_list
        
