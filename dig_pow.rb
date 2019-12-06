require "test/unit/assertions"
include Test::Unit::Assertions

def dig_pow(n, p)
    total = n.digits.reverse.each_with_index.map {|n, i| n**(p + i) }.sum
    return total % n == 0 ? total / n : -1
end

assert_equal(dig_pow(89, 1), 1)
assert_equal(dig_pow(92, 1), -1)
assert_equal(dig_pow(46288, 3), 51)
