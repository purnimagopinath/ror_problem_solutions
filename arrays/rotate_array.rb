#Given an array, rotate the array to the right by k steps, where k is non-negative.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.

def rotate(nums, k)
    for i in 0..k-1 do
        nums.unshift(nums.pop)
    end
    # nums.rotate!(-k)
end

#Examples: Input: nums = [1,2,3,4,5,6,7], k = 3
#Output: [5,6,7,1,2,3,4]
#Input: nums = [-1,-100,3,99], k = 2
#Output: [3,99,-1,-100]
#Input: nums = [1,2] , k = 3
#Output: [2,1]
