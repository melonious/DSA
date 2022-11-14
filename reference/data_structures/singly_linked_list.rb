# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def build_linked_list(list)
    size = list.length
    head = nil
    prev_node = nil
    for i in 0...size
        if prev_node == nil
            head = ListNode.new(list[i])
            prev_node = head
        else
            next_node = ListNode.new(list[i])
            prev_node.next = next_node
            prev_node = next_node
        end
    end
    return head
end