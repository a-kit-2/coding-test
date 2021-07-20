# 2〜9の数字を含む文字列を指定すると、その数字が表す可能性のあるすべての文字の組み合わせを返します。 
# 任意の順序で回答を返します。 数字から文字へのマッピング（電話ボタンの場合と同様）を以下に示します。 
# 1はどの文字にもマップされないことに注意してください。
# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  
end

require 'minitest/autorun'

class LetterCombinationsOfaPhoneNumberTest < Minitest::Test
  def test_letter_combinations
    assert_equal ["ad","ae","af","bd","be","bf","cd","ce","cf"], letter_combinations("23")
    assert_equal [], letter_combinations("")
    assert_equal ["a","b","c"], letter_combinations("2")
  end
end