# n個の非負の整数a1、a2、...、aが与えられます。ここで、それぞれは座標（i、ai）の点を表します。 
# n本の垂直線は、線iの2つの端点が（i、ai）と（i、0）にくるように描かれます。 
# コンテナに最も多くの水が含まれるように、x軸とともにコンテナを形成する2本の線を見つけます。 
# コンテナを傾けることはできませんのでご注意ください。
# Input: height = [1,8,6,2,5,4,8,3,7]
# Output: 49
# Explanation: 上記の垂直線は、配列[1,8,6,2,5,4,8,3,7]で表されます。
#              この場合、コンテナに含めることができる水の最大面積（青いセクション）は49です。

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  
end

require 'minitest/autorun'

class ContainerWithMostWaterTest < Minitest::Test
  def test_max_area1
    assert_equal 49, max_area([1,8,6,2,5,4,8,3,7])
  end
  def test_max_area2
    assert_equal 1, max_area([1,1])
  end
  def test_max_area3
    assert_equal 16, max_area([4,3,2,1,4])
  end
  def test_max_area4
    assert_equal 2, max_area([1,2,1])
  end
end