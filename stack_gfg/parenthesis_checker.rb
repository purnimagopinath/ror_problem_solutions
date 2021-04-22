#Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#An input string is valid if:
#Open brackets must be closed by the same type of brackets.
#Open brackets must be closed in the correct order.


#Input: s = "()[]{}" true
#Input: s = "([)]" false

# @param {String} s
# @return {Boolean}
def is_valid(s)
    # h={"("=>")","{"=>"}","["=>"]"}
    # s=s.split("")
    # arr=[]
    # for i in 0..(s.size-1) do
    #    if i==0 || !(h[arr.last] == s[i])
    #     arr.push(s[i])
    #    else
    #        arr.pop()
    #    end
    # end
    # arr.empty?
     pairs = { ')' => '(', ']' => '[', '}' => '{' }
    opened = []
    s.chars.each do |ch|
        case ch
            when '(', '[', '{'
                opened.push(ch)
            when ')', ']', '}'
                return false if opened.last != pairs[ch]
                opened.pop
        end
    end
    opened.empty?
end
