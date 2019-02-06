#!/usr/intel/pkgs/ruby/2.5.0/bin/ruby

require 'test/unit'
=begin
Given a string, find the length of the longest substring without repeating characters.
=end
def longest_seq(s)
 a = s.split(//)
  length = 0
  final = {}
  index = 0
 
  while index < s.length
    puts "index is #{index}"
    if final.key?(a[index])
      puts final[a[index]]
      index = (final[a[index]] + 1)
      puts "Here #{index}"
      final.clear
    else
      final[a[index]] = index
      index += 1
    end
    length = final.keys.length > length ? final.keys.length : length
    puts final
    puts "end of iter"
  end    
  return length 
end


class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( 3, longest_seq('abcabcaa'))
    assert_equal( 3, longest_seq('pwwkewkk'))
    assert_equal( 1, longest_seq('pppppppp'))
    assert_equal( 7, longest_seq('abcadefgb'))
    assert_equal( 4, longest_seq('abcabbdef'))

    assert_equal( 'abc', longest_seq('abcabcaa').join  )
    assert_equal( 'wke', longest_seq('pwwkewkk').join  )
    assert_equal( 'p', longest_seq('pppppppp').join  )
    assert_equal( 'bcadefg', longest_seq('abcadefgb').join )
    assert_equal( 'bdef', longest_seq('abcabbdef').join )
  end
end
