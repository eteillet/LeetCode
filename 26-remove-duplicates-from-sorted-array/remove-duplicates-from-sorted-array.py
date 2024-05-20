class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        result = [nums[0]]
        cur = nums[0]
        for i in range(1, len(nums)):
            if nums[i] != cur:
                result.append(nums[i])
                cur = nums[i]
        k = len(result)
        for i in range(len(nums) - k):
            result.append(-1)
        for i in range(len(nums)):
            nums[i] = result[i]
        return k