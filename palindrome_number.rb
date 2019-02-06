#!/usr/intel/pkgs/ruby/2.5.0/bin/ruby

=begin
Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

=end
require 'test/unit'

def is_palindrome(x) 
  a = x.to_s.split('')
  return a==a.reverse
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( true, is_palindrome(121))
    assert_equal( false, is_palindrome(-121))
    assert_equal( false, is_palindrome(10))
  end
end
