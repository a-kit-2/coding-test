# リンクリストの先頭であるheadを指定して、リンクリストにサイクルが含まれているかどうかを判断します。 
# 次のポインタを継続的にたどることで再び到達できるノードがリストにある場合、リンクリストにサイクルがあります。 
# 内部的には、posは、テールの次のポインタが接続されているノードのインデックスを示すために使用されます。 
# posはパラメータとして渡されないことに注意してください。 
# リンクリストにサイクルがある場合はtrueを返します。 
# それ以外の場合は、falseを返します。
# Input: head = [3,2,0,-4], pos = 1
# Output: true
# Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {Boolean}
def has_cycle(head)
  
end

require 'minitest/autorun'

class LinkedListCycleTest < Minitest::Test
  def test_has_cycle1
    ln1 = ListNode.new(3)
    ln2 = ListNode.new(2)
    ln3 = ListNode.new(0)
    ln4 = ListNode.new(-4)
    ln1.next = ln2
    ln2.next = ln3
    ln3.next = ln4
    ln4.next = ln2
    assert_equal true, has_cycle(ln1)
  end
  def test_has_cycle2
    ln1 = ListNode.new(1)
    ln2 = ListNode.new(2)
    ln1.next = ln2
    ln2.next = ln1
    assert_equal true, has_cycle(ln1)
  end
  def test_has_cycle3
    ln1 = ListNode.new(1)
    assert_equal false, has_cycle(ln1)
  end
end