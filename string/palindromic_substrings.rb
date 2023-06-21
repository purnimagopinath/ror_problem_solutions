# Given a string s, return the number of palindromic substrings in it.

# A string is a palindrome when it reads the same backward as forward.

# A substring is a contiguous sequence of characters within the string.

 

# Example 1:

# Input: s = "abc"
# Output: 3
# Explanation: Three palindromic strings: "a", "b", "c".
# Example 2:

# Input: s = "aaa"
# Output: 6
# Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
#  


# @param {String} s
# @return {Integer}
def count_substrings(s)
    count = 0
    s.size.times do |i|
      count += count_sub_palindromes(i,i,s)
      count += count_sub_palindromes(i,i+1,s)
    end
    return count
end

def count_sub_palindromes(l,r,s)
c=0
  while(l>=0 && r<s.size && s[l]==s[r]) do
    c+=1
    l-=1
    r+=1
  end
  return c
end
