from math import floor

class Solution:
    def mySqrt(self, x: int) -> int:
        if x == 1:
            return 1
        left = 1
        right = int(x / 2)
        while left <= right:
            mid = int((left + right) / 2)
            print(f"mid = {mid}  left = {left}  right = {right}")
            if mid * mid < x:
                left = mid + 1
            elif mid * mid > x:
                right = mid - 1
            else:
                return mid
        return min (left, right)