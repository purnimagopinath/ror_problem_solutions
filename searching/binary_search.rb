#Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
     low = 0; high = nums.length-1; 
    while (low<=high) do
        middle = (high+low)/2;
        if nums[middle] < target
            low = middle+1;
        elsif nums[middle] > target
            high = middle-1;
        else
            return middle;
        end
    end
    return -1;
    
end
