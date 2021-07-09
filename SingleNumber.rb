# 整数numの空でない配列を指定すると、1つを除いてすべての要素が2回表示されます。
# その単一のものを見つけます。 実行時の複雑さが線形のソリューションを実装し、一定の余分なスペースのみを使用する必要があります。
# Input: nums = [2,2,1]
# Output: 1

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  result = 0
  nums.each do |num|
    result ^= num
  end
  return result
end

require 'minitest/autorun'

class SingleNumberTest < Minitest::Test
  def test_single_number
    assert_equal 1, single_number([2,2,1])
    assert_equal 4, single_number([4,1,2,1,2])
    assert_equal 1, single_number([1])
  end
end