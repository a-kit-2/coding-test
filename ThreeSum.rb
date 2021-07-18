# 整数配列numsが与えられた場合、
# i！= j、i！= k、j！= k、およびnums[i]+nums[j]+nums [k] == 0となるように、
# すべてのトリプレット[nums [i]、nums [j]、nums [k]]を返します。
# ソリューションセットに重複するトリプレットが含まれていてはならないことに注意してください。
# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  
end

require 'minitest/autorun'

class TtreeSumTest < Minitest::Test
  def test_three_sum
    assert_equal [[-1,-1,2],[-1,0,1]], three_sum([-1,0,1,2,-1,-4])
    assert_equal [], three_sum([])
    assert_equal [], three_sum([0])
  end
end