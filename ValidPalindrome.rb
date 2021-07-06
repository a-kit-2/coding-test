# 文字列sが与えられた場合、英数字のみを考慮し、大文字と小文字を無視して、それが回文であるかどうかを判別します。
# Input:s = "A man, a plan, a canal: Panama" 
# Output:true 説明：「amanaplanacanalpanama」は回文です。

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z0-9]/,"")
  if s.downcase == s.downcase.reverse
    return true
  else
    return false
  end
end

require 'minitest/autorun'

class ValidPalindromeTest < Minitest::Test
  def test_is_palindrome
    assert_equal true, is_palindrome("A man, a plan, a canal: Panama")
    assert_equal false, is_palindrome("race a car")
  end
end