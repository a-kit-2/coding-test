# 文字列「PAYPALISHIRING」は、次のように指定された行数にジグザグパターンで書き込まれます
# （読みやすくするために、このパターンを固定フォントで表示することをお勧めします）。
# P   A   H   N
# A P L S I I G
# Y   I   R
# そして、1行ずつ読んでください：「PAHNAPLSIIGYIR」 文字列を受け取り、行数を指定してこの変換を行うコードを記述します。
# Input: s = "PAYPALISHIRING", numRows = 4
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  rows = []
  current = 0
  reverse = false
  result = ""
  if num_rows == 1
    return s
  end
  num_rows.times do |i|
    rows[i] = []
  end
  s.length.times do |i|
    rows[current].push(s[i])
    if !reverse
      current += 1
    else
      current -= 1
    end
    if current == num_rows - 1 || current == 0
      reverse = !reverse
    end
  end
  rows.each do |row|
    row.each do |c|
      result += c
    end
  end
  return result
end

require 'minitest/autorun'

class ZigZagConversionTest < Minitest::Test
  def test_convert
    assert_equal "PAHNAPLSIIGYIR", convert("PAYPALISHIRING", 3)
    assert_equal "PINALSIGYAHRPI", convert("PAYPALISHIRING", 4)
    assert_equal "A", convert("A", 1)
    assert_equal "AB", convert("AB", 1)
  end
end