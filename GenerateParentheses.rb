# n組の括弧が与えられた場合、整形式の括弧のすべての組み合わせを生成する関数を記述します。
# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  
end

require 'minitest/autorun'

class GenerateParenthesesTest < Minitest::Test
  def test_generate_parenthesis
    assert_equal ["((()))","(()())","(())()","()(())","()()()"], generate_parenthesis(3)
    assert_equal ["()"], generate_parenthesis(1)
  end
end