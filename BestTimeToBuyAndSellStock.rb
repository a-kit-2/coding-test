# 配列価格が与えられます。
# ここで、prices[i]はi日目の特定の株式の価格です。 
# ある株を購入するために1日を選択し、その株を販売するために将来別の日を選択することによって、利益を最大化したいと考えています。 
# このトランザクションから達成できる最大の利益を返します。 
# 利益が得られない場合は、0を返します。
# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: 2日目（価格= 1）に購入し、5日目（価格= 6）に販売し、利益= 6-1 = 5。 
#              販売する前に購入する必要があるため、2日目の購入と1日目の販売は許可されていないことに注意してください。

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  
end

require 'minitest/autorun'

class BestTimeToBuyAndSellStockTest < Minitest::Test
  def test_max_profit
    assert_equal 5, max_profit([7,1,5,3,6,4])
    assert_equal 0, max_profit([7,6,4,3,1])
  end
end