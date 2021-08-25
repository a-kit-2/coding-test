# 整数nを指定すると、n！の後続ゼロ（末尾のゼロ）の数を返します。
# フォローアップ：対数時間計算量で機能するソリューションを作成できますか？
# Input: n = 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.
# Input: n = 5
# Output: 1
# Explanation: 5! = 120, one trailing zero.

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  
end

require 'minitest/autorun'

class FactorialTrailingZeroesTest < Minitest::Test
  def test_trailing_zeroes
    assert_equal [3,2,1], trailing_zeroes(tn1)
  end
end