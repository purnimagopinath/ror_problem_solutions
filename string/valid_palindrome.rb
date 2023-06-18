# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

 

# Example 1:

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:

# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
# Example 3:

# Input: s = " "
# Output: true
# Explanation: s is an empty string "" after removing non-alphanumeric characters.
# Since an empty string reads the same forward and backward, it is a palindrome.

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  i=0
  s = s.downcase
  j=s.size-1
# filtered_s = s.gsub(/[^a-bA-Z0-9]/i,'').downcase
  while i<j do 
    if s[i]==s[j]
      i +=1
      j -=1
    elsif (s[i].match?(/[a-zA-Z0-9]/) && s[j].match?(/[a-zA-Z0-9]/))
      return false
    else
      j -=1 unless s[j].match?(/[a-zA-Z0-9]/)
      i +=1 unless s[i].match?(/[a-zA-Z0-9]/)
    end
  end
    return true
end


# def is_palindrome(s)
#     s = s.downcase.gsub(/[^0-9a-z]/,"")
#     s.eql?(s.reverse)
# end