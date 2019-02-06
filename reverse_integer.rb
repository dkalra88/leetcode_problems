=begin
Given a 32-bit signed integer, reverse digits of an integer.
Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
=end
require 'test/unit'

def reverse(x)
    a = x.to_s.split("")
    if a[0] == '-'
        b = []
        b.push(a[0])
        b.push(a[1..-1].reverse)
        b.flatten
        c = b.join('')
    else
        c = a.reverse.join('')
    end
    i = c.to_i
    if ( i < (-2)**31 || i > ((2)**31 -1))
        return 0
    else 
        return i
    end
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( 321, reverse(123))
    assert_equal( -321, reverse(-123))
    assert_equal( 21, reverse(120))
    assert_equal( 0, reverse(1534236469))
  end
end
