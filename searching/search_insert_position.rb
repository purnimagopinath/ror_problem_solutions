#Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
#Input: nums = [1,3,5,6], target = 5
#Output: 2
#Input: nums = [1], target = 0
#Output: 0
#Input: nums = [1,3,5,6], target = 2
#Output: 1

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    # low=0; high = nums.length-1;
    # while (low<=high) do
    #     middle = (low+high)/2;
    #     if (nums[middle]< target && nums[middle+1]>target)
    #         return middle+1;
    #     elsif (nums[middle]>target && nums[middle-1]<target)
    #         return middle-1;
    #     elsif nums[middle]<target
    #         low= middle+1;
    #     elsif nums[middle]>target
    #         high = middle-1;
    #     else
    #         return middle;
    #     end
    # end
    
    low = 0
    high = nums.size-1
     while low <= high
         mid = low + (high-low)/2
         return mid if nums[mid]==target 
         if nums[mid]<target
              low = mid +1
         else
         high  = mid -1
         end
     end
    low
end
