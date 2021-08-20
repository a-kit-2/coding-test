# 昇順でソートされた整数numの配列が与えられた場合、
# 与えられたターゲット値の開始位置と終了位置を見つけます。 
# 配列内にターゲットが見つからない場合は、[-1、-1]を返します。 
# 実行時の複雑さがO（log n）のアルゴリズムを作成する必要があります。
# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    
end

require 'minitest/autorun'

class FindFirstAndLastPositionOfElementInSortedArrayTest < Minitest::Test
  def test_search_range
    assert_equal [1,3,2], search_range()
  end
end