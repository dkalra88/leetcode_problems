#!/usr/intel/pkgs/ruby/2.5.0/bin/ruby

=begin
There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

You may assume nums1 and nums2 cannot be both empty.

=end
require 'test/unit'

def find_median_sorted_arrays(nums1, nums2)
    a = (nums1 + nums2).sort
    l = a.length
    m = (a[(l/2)] + a[(l-1)/2])/2.0
    return m
end

class TestProg < Test::Unit::TestCase
  def test_seq
    assert_equal( 2.0, find_median_sorted_arrays([1,3], [2]))
    assert_equal( 2.5, find_median_sorted_arrays([1, 2], [3,4]))
  end
end
