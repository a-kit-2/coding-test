# 文字列として表される2つの非負の整数num1とnum2が与えられた場合、
# これも文字列として表されるnum1とnum2の積を返します。
# 注：組み込みのBigIntegerライブラリを使用したり、入力を直接整数に変換したりしないでください。
# Input: num1 = "2", num2 = "3"
# Output: "6"

# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  
end

require 'minitest/autorun'

class MultiplyStringsTest < Minitest::Test
  def test_multiply
    assert_equal "6", multiply("2", "3")
    assert_equal "56088", multiply("123", "456")
  end
end