# Given a string s, find the length of the longest 
# substring
#  without repeating characters.

 

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
#  

# @param {String} s
# @return {Integer}
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    max = ""
    sub_str = ""
    i=0; j=0;
    while j<(s.size)  do 
      if sub_str.include?(s[j])
        max = [max, sub_str].max_by(&:size)
        i +=1 
        j = i
        sub_str = ""
      else
        sub_str += s[j]
        j +=1
      end
    end
    [max, sub_str].max_by(&:size).size
end





# def length_of_longest_substring(s)
#     max_substring = 0
#     used = []

#     s.chars.each do |c|
#         if used.include?(c)
#             if used.length > max_substring
#                 max_substring = used.length
#             end
#             used.shift(used.index(c) + 1)
#         end
#         used << c
#     end
#     [max_substring, used.length].max
# end