#!/usr/intel/pkgs/ruby/2.5.0/bin/ruby

=begin
Implement atoi which converts a string to an integer.

The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

If no valid conversion could be performed, a zero value is returned.

Note:

Only the space character ' ' is considered as whitespace character.
Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [â231,  231 â 1]. If the numerical value is out of the range of representable values, INT_MAX (231 â 1) or INT_MIN (â231) is returned.

=end
require 'test/unit'

def atoi(str)
  str = str.gsub(/^\s+/,'')
  a = str.scan(/^-?\+?\d+/)[0].to_i
  if a < (-2)**31
    return -2**31
  elsif a > ((2)**31)-1
    return ((2)**31)-1
  else
    return a
  end
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( 42, atoi("42"))
    assert_equal( -42, atoi("   -42"))
    assert_equal( 4193, atoi("4193 with words"))
    assert_equal( 0, atoi("words and 987"))
    assert_equal( -2147483648, atoi("-91283472332"))
    assert_equal( 1, atoi("+1"))
  end
end
