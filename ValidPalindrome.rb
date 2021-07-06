# 文字列sが与えられた場合、英数字のみを考慮し、大文字と小文字を無視して、それが回文であるかどうかを判別します。
# 入力：s = "A man, a plan, a canal: Panama" 出力：true 説明：「amanaplanacanalpanama」は回文です。

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  
end

require 'minitest/autorun'

class ValidPalindromeTest < Minitest::Test
  def test_is_palindrome
    assert_equal true, is_palindrome("A man, a plan, a canal: Panama")
    assert_equal false, is_palindrome("race a car")
  end
end