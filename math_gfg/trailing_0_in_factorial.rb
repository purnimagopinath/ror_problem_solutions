# For an integer N find the number of trailing zeroes in N!.
# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    (n / 5).zero? ? 0 : n / 5 + trailing_zeroes(n / 5)
end