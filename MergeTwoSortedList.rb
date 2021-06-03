# 並べ替えられた 2 つの連結リストをマージし、
# 並べ替えられた連結リストとして返します。 
# リストは、最初の 2 つのリストのノードをつなぎ合わせて作成する必要があります。
# Input: l1 = [1,2,4], l2 = [1,3,4]
# Output: [1,1,2,3,4,4]

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

def show_node(node)
  if node.next == nil
    return node.val.to_s
  else 
    return node.val.to_s + "=>" + show_node(node.next)
  end
end

a1 = ListNode.new(1)
a2 = ListNode.new(2)
a3 = ListNode.new(4)
a1.next = a2
a2.next = a3

b1 = ListNode.new(1)
b2 = ListNode.new(3)
b3 = ListNode.new(4)
b1.next = b2
b2.next = b3

def merge_two_lists(l1, l2)

end

merge_two_lists(a1, b2)