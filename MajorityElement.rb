# サイズnの配列numsが与えられた場合、多数決要素を返します。
# 多数決要素は、⌊n/2⌋回以上出現する要素です。
# 多数決要素は常に配列に存在すると想定できます。
# Input: nums = [3,2,3]
# Output: 3

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  
end

require 'minitest/autorun'

class MajorityElementTest < Minitest::Test
  def test_majority_element
    assert_equal 3, majority_element([3,2,3])
    assert_equal 2, majority_element([2,2,1,1,1,2,2])
  end
end