class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        if target in nums:
            return nums.index(target)   # si target est present on retourne son index
        for i in range(len(nums)):
            if nums[i] > target:
                return i                # target prendra l'index du 1er element superieur a lui
        return len(nums)                # sinon target sera en derniere position
