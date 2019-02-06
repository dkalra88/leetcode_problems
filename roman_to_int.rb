=begin
Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

I can be placed before V (5) and X (10) to make 4 and 9. 
X can be placed before L (50) and C (100) to make 40 and 90. 
C can be placed before D (500) and M (1000) to make 400 and 900.
Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.

=end
require 'test/unit'

def roman_to_int(s)
  a = s.split('')
  m = {'I'=> 1, 'V'=> 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  sum = 0
  a.each_with_index do |l, i|
    if i < (a.length() -1)
      if ((l == 'I') && (a[i+1] == 'V' || a[i+1] =='X'))
        sum = sum - 1
      elsif (l == 'X' && (a[i+1] == 'L' || a[i+1] =='C'))
        sum = sum - 10
      elsif (l == 'C' && (a[i+1] == 'D' || a[i+1] =='M'))
        sum = sum - 100
      else
        sum = sum + m[l]
      end
    else
      sum = sum + m[a[-1]]
    end
  end
  return sum
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( 3 , roman_to_int('III'))
    assert_equal( 4 , roman_to_int('IV'))
    assert_equal( 9 , roman_to_int('IX'))
    assert_equal( 58 , roman_to_int('LVIII'))
    assert_equal( 1994 , roman_to_int('MCMXCIV'))
  end
end
