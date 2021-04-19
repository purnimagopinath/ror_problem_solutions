#Given an array nums of size n, return the majority element.

#The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    # nums_uniq = nums.uniq
    # nums_uniq.each_with_object(Hash.new(0)){|num, counts| counts[num] = nums.count(num)}.max_by{|k,v| v}[0]
    
    #Boyer-Moore algorithm
    candidate = nil
    count = 0

    # first round to find candidate
    nums.each do |ele|
      candidate = ele if count == 0

      if candidate == ele
        count += 1
      else
        count -= 1
      end
    end

    # second round to confirm
    count = 0
    nums.each do |ele|
      count += 1 if ele == candidate
    end

    count > nums.count/2 ? candidate : nil
end
