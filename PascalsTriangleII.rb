# 整数のrowIndexを指定すると、パスカルの三角形のrowIndexth（0インデックス）行を返します。 
# パスカルの三角形では、次のように、各数値はそのすぐ上の2つの数値の合計です。
# Input: rowIndex = 3
# Output: [1,3,3,1]

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = []
  (row_index+1).times do |i|
    result.push([1]*(i+1))
  end
  (row_index+1).times do |i|
    i.times do |j|
      if j == 0
        result[i][j] = 1
      elsif i == j
        result[i][j] = 1
      else
        result[i][j] = result[i-1][j-1] + result[i-1][j]
      end
    end
  end
  return result[row_index]
end

require 'minitest/autorun'

class PascalsTriangleIITest < Minitest::Test
  def test_get_row
    assert_equal [1, 3, 3, 1], get_row(3)
    assert_equal [1], get_row(0)
    assert_equal [1, 1], get_row(1)
  end
end