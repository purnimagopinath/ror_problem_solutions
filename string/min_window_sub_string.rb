# @param {String} s
# @param {String} t
# @return {String}
# def min_window(s, t)
#     return "" if s.empty?
#     return s if s.size==1 && s==t
#     return s if s==t
#     l=r=0
#     sub_str=min=""
#     while r<(s.size) do 
#       sub_str += s[r]
#       r+=1
#       while (((sub_str.split('').sort) & (t.split('').sort))==(t.split('').sort)) do
#         min = min.empty? ? sub_str : [min,sub_str].min_by(&:size)
#         sub_str=sub_str[1..-1]
#         puts sub_str
#         l+=1
#       end
#     end
#     min
# end

# "bbaa"
# "aba"
#above function doesnt solve for the above input 


# Given two strings s and t of lengths m and n respectively, return the minimum window 
# substring
#  of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

# The testcases will be generated such that the answer is unique.

 

# Example 1:

# Input: s = "ADOBECODEBANC", t = "ABC"
# Output: "BANC"
# Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.
# Example 2:

# Input: s = "a", t = "a"
# Output: "a"
# Explanation: The entire string s is the minimum window.
# Example 3:

# Input: s = "a", t = "aa"
# Output: ""
# Explanation: Both 'a's from t must be included in the window.
# Since the largest window of s only has one 'a', return empty string.
 

# Constraints:

# m == s.length
# n == t.length
# 1 <= m, n <= 105
# s and t consist of uppercase and lowercase English letters.
 

# Follow up: Could you find an algorithm that runs in O(m + n) time?


def min_window(s, t)
    
    current_count_for_chars = {}
    
    window_starting_index = 0
    
    window = []

    
    goal_count_for_chars = {}
    t_index = 0
    while t_index < t.size
        if goal_count_for_chars[t[t_index]]
            goal_count_for_chars[t[t_index]] = goal_count_for_chars[t[t_index]] + 1
        else
            goal_count_for_chars[t[t_index]] = 1
            current_count_for_chars[t[t_index]] = 0
        end
        
        t_index = t_index + 1
    end

    goal_unique_letter_count = goal_count_for_chars.keys.count
    
    current_unique_letter_count = 0

    (0...s.size).each do |i|
        char = s[i]
        if not goal_count_for_chars[char]
            next 
        end 

        current_count_for_chars[char] = current_count_for_chars[char]  + 1
        if current_count_for_chars[char] == goal_count_for_chars[char]
            current_unique_letter_count = current_unique_letter_count + 1
        end

        while !current_count_for_chars[s[window_starting_index]] || (current_count_for_chars[s[window_starting_index]] > goal_count_for_chars[s[window_starting_index]])
            if current_count_for_chars[s[window_starting_index]]
                current_count_for_chars[s[window_starting_index]] = current_count_for_chars[s[window_starting_index]] -  1
            end
            
            window_starting_index = window_starting_index + 1
        end

        if current_unique_letter_count != goal_unique_letter_count
            next
        end
        if window.empty?
            window = [window_starting_index, i]
        else
            if (i - window_starting_index < window[1] - window[0]) 
                window = [window_starting_index, i]
            end
        end
    end


    if window.empty?
        return '' 
    else
        s[window[0]..window[1]]
    end
end
