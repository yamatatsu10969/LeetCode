class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        if n < 0: return
        
        del nums1[m: m + n]
        nums1.extend(nums2)
        nums1.sort()






