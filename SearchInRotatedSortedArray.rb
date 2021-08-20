# 昇順でソートされた整数配列numがあります（個別の値を使用）。 
# 関数に渡される前に、numsは未知のピボットインデックスk（0 <= k <nums.length）で回転され、
# 結果の配列は[nums [k]、nums [k 1]、...、numsになります。 
# [n-1]、nums [0]、nums [1]、...、nums [k-1]]（0-インデックス付き）。 
# たとえば、[0,1,2,4,5,6,7]はピボットインデックス3で回転し、[4,5,6,7,0,1,2]になる場合があります。
# ローテーション後の配列numsと整数のターゲットを指定すると、
# ターゲットのインデックスがnumsの場合は返され、numsの場合は-1が返されます。 
# 実行時の複雑さがO（log n）のアルゴリズムを作成する必要があります。
# Input: nums = [4,5,6,7,0,1,2], target = 0
# Output: 4

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  
end

require 'minitest/autorun'

class SearchInRotatedSortedArrayTest < Minitest::Test
  def test_search
    assert_equal [1,3,2], search()
  end
end