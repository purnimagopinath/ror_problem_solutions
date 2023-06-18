# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
# Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?
def missing_number(nums)
    # ([*1..nums.length]-(nums.sort))[0] || 0 
    n= nums.length
    total = (n*(n+1))/2
    sum=0
    nums.each do |num|
        sum+=num
    end
    return total-sum
end
