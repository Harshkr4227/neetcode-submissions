class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        count ={}
        for i in range(len(nums)):
            first = nums[i]
            sec = target - first
            if sec in count:
                return [count[sec], i]
            count[first] = i
        return count