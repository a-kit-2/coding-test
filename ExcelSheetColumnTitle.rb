# 整数のcolumnNumberを指定すると、Excelシートに表示される対応する列タイトルを返します。
# For example:
# A -> 1
# B -> 2
# C -> 3
# ...
# Z -> 26
# AA -> 27
# AB -> 28 
# ...

# Input: columnNumber = 1
# Output: "A"


# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  
end

require 'minitest/autorun'

class ExcelSheetColumnTitleTest < Minitest::Test
  def test_convert_to_title
    assert_equal [3,2,1], convert_to_title(tn1)
  end
end