gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'subarray'

# Given an array of arrays
#   Where the inner arrays contain 1-5 numbers
# Find the element with the greatest total of the containing numbers.

# Ex:

# [
#   [1, 2],
#   [4, 1],
#   [10],
#   [6, 6]
# ]

# = > [6, 6]

class SubarrayTest < MiniTest::Test
  def test_it_exists
    assert Subarray
  end

  def test_it_finds_the_correct_subarray_in_a_mixed_group
    input = [
      [1, 2],
      [4, 1],
      [10],
      [6, 6]
    ]

    assert_equal [6, 6], Subarray.greatest_from(input)
  end

  def test_it_finds_the_only_element_in_a_group
    input = [[33]]
    assert_equal [33], Subarray.greatest_from(input)
  end

  def test_it_finds_the_only_element_in_a_group_when_it_has_multiple_subelements
    input = [[11, 22]]
    assert_equal [11, 22], Subarray.greatest_from(input)
  end

  def test_it_finds_one_subarray_when_there_are_two
    input = [[22], [11]]
    assert_equal [22], Subarray.greatest_from(input)
  end

  def test_it_finds_one_subarray_when_its_not_first
    input = [[11], [22]]
    assert_equal [22], Subarray.greatest_from(input)
  end

  def test_it_handles_all_negative_numbers
    input = [[-1], [-2]]
    assert_equal [-1], Subarray.greatest_from(input)
  end

  def test_it_finds_the_sum_of_an_array
    input = [1, 1]
    assert_equal 2, Subarray.sum(input)
  end

  def test_it_finds_the_sum_of_an_array_of_negative_numbers
    input = [-1, -2]
    assert_equal -3, Subarray.sum(input)
  end

  def test_it_finds_the_only_element_when_it_has_subelements
    input = [[1,5]]
    assert_equal [1, 5], Subarray.greatest_from(input)
  end

  def test_it_finds_the_larger_element_when_there_are_subelements
    input = [[5, 1], [3, 4], [2, 2]]
    assert_equal [3, 4], Subarray.greatest_from(input)
  end
end
