# ソートされた連結リストの先頭を指定して、
# 各要素が1回だけ表示されるように、すべての重複を削除します。
# ソートされた連結リストも返します。
# Input: head = [1,1,2,3,3]
# Output: [1,2,3]

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

ln1 = ListNode.new(1)
ln2 = ListNode.new(1)
ln3 = ListNode.new(2)
ln4 = ListNode.new(3)
ln5 = ListNode.new(3)
ln1.next = ln2
ln2.next = ln3
ln3.next = ln4
ln4.next = ln5

def delete_duplicates(head)
  show_node(head)
end

puts delete_duplicates(ln1)