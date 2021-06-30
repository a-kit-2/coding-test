# 整数のnumRowsを指定すると、パスカルの三角形を返します。 
# パスカルの三角形では、次のように、各数値はそのすぐ上の2つの数値の合計です。
# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  
end

require 'minitest/autorun'

class PascalsTriangleTest < Minitest::Test
  def test_generate
    assert_equal [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], generate(5)
    assert_equal [[1]], generate(1)
  end
end