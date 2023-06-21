# The Dutch national flag problem requires sorting an array consisting of only 0s, 1s, and 2s in linear time and constant space.
# The time complexity for the worst case of the QuickSort algorithm is O(n^2) because it often chooses the last element as the pivot and keeps partitioning the same subarrays.
# Quick Sort is a divide-and-conquer algorithm which divides an array into three parts, recursively partitions them, and finally sorts the array in ascending order.


#merge sort 0(n log n) time complexity 0(1)
#dutch 0(n) 0(1)
#count of elements 0(2n) 0(1)



# Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

# We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

# You must solve this problem without using the library's sort function.

 

# Example 1:

# Input: nums = [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]
# Example 2:

# Input: nums = [2,0,1]
# Output: [0,1,2]
 

# Constraints:

# n == nums.length
# 1 <= n <= 300
# nums[i] is either 0, 1, or 2.
 

# Follow up: Could you come up with a one-pass algorithm using only constant extra space?
def sort_colors(nums)
    low=mid=0
    high = nums.size-1

    while(mid<=high)
      case nums[mid]
      when 0
        nums[low], nums[mid]=nums[mid],nums[low]
        low +=1
        mid +=1
      when 2
        nums[mid], nums[high]=nums[high],nums[mid]
        high -=1
      when 1
        mid+=1
      end
    end
end