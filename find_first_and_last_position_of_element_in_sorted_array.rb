# https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/


def search_range(nums, target)
    nums.include?(target) ? [nums.index(target), nums.rindex(target)] : [-1, -1]
end