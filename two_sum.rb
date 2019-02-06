#!/usr/intel/pkgs/ruby/2.5.0/bin/ruby

=begin
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

=end
require 'test/unit'

def two_sum(nums, target)
    nums.each_with_index do |v, i|
        if nums.include?(target - v) and nums.index(target -v) != i
            return [i, nums.index(target -v)]
        end
    end
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( [0,1], two_sum([2,7,11,15], 9))
  end
end
