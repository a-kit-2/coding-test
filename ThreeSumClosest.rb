# n個の整数の配列numsと整数のターゲットが与えられた場合、
# 合計がターゲットに最も近くなるように、numsで3つの整数を見つけます。 
# 3つの整数の合計を返します。各入力には正確に1つのソリューションがあると想定できます。
# Input: nums = [-1,2,1,-4], target = 1
# Output: 2
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  
end

require 'minitest/autorun'

class TtreeSumClosestTest < Minitest::Test
  def test_three_sum_closest
    assert_equal 2, three_sum_closest([-1,2,1,-4], 1)
  end
end