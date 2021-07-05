# 配列価格が与えられます。
# ここで、prices[i]はi日目の特定の株式の価格です。 
# あなたが達成できる最大の利益を見つけてください。
# 必要な数のトランザクションを完了することができます（つまり、1つを購入し、1株の株式を複数回販売します）。 
# 注：複数のトランザクションを同時に行うことはできません（つまり、再度購入する前に株式を売却する必要があります）。
# Input: prices = [7,1,5,3,6,4]
# Output: 7
# Explanation: 2日目（価格= 1）に購入し、3日目（価格= 5）に販売し、利益= 5-1 = 4。
#              次に、4日目（価格= 3）に購入し、5日目（価格= 6）に販売し、利益= 6-3 = 3です。

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  
end

require 'minitest/autorun'

class BestTimeToBuyAndSellStockIITest < Minitest::Test
  def test_max_profit
    assert_equal 7, max_profit([7,1,5,3,6,4])
    assert_equal 4, max_profit([1,2,3,4,5])
    assert_equal 0, max_profit([7,6,4,3,1])
  end
end