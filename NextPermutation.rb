# next permutationを実装します。
# これにより、数字が辞書式順序で次に大きい数字の順列に再配置されます。 
# そのような配置が不可能な場合は、可能な限り低い順序として再配置する必要があります
# （つまり、昇順で並べ替えます）。 
# 交換を実施し、一定の追加メモリのみを使用する必要があります。
# Input: nums = [1,2,3]
# Output: [1,3,2]

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  
end

require 'minitest/autorun'

class NextPermutationTest < Minitest::Test
  def test_next_permutation1
    nums = [1,2,3]
    next_permutation(nums)
    assert_equal [1,3,2], nums
  end
end