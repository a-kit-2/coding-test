# 二分木の根を与えられて、その最大の深さを返します。
# 二分木の最大深度は、ルートノードから最も遠いリーフノードまでの最長パスに沿ったノードの数です。
# Input: root = [3,9,20,null,null,15,7]
# Output: 3

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

tn1 = TreeNode.new(3)
tn2 = TreeNode.new(9)
tn3 = TreeNode.new(20)
tn4 = TreeNode.new(15)
tn5 = TreeNode.new(7)
tn1.left = tn2
tn1.right = tn3
tn3.left = tn4
tn3.right = tn5

def max_depth(root)
  
end

p max_depth(tn1)