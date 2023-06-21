# Given an array of positive integers nums and a positive integer target, return the minimal length of a 
# subarray
#  whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

 

# Example 1:

# Input: target = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: The subarray [4,3] has the minimal length under the problem constraint.
# Example 2:

# Input: target = 4, nums = [1,4,4]
# Output: 1
# Example 3:

# Input: target = 11, nums = [1,1,1,1,1,1,1,1]
# Output: 0
 

# Constraints:

# 1 <= target <= 109
# 1 <= nums.length <= 105
# 1 <= nums[i] <= 104
 

# Follow up: If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log(n)).


def min_sub_array_len(target, nums)
    return 0 if nums.empty?
    return 1 if nums.include?(target)
    l = r = sum = 0
     min_length = Float::INFINITY
    while r<nums.length
      sum+=nums[r]
      r+=1
      while sum>=target
        min_length = [min_length, r-l].min
        sum -=nums[l]
        l+=1
      end
    end
      
  min_length < Float::INFINITY ? min_length : 0
end


# def min_sub_array_len(target, nums)
#     n = nums.size
#     i = 0
#     j = 0
#     sum = nums.first
#     min = target <= sum ? 1 : n + 1
#     while i < n && j < n
#         return 1 if min == 1

#         if sum < target
#             i += 1
#             return min > n ? 0 : min if i == n
#             sum += nums[i]
#         else
#             min = [min, i - j + 1].min
#             sum -= nums[j]
#             j += 1
#         end
#     end

#     min > n ? 0 : min
# end