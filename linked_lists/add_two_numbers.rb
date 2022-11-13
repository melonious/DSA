# https://leetcode.com/problems/add-two-numbers/

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# 2 -> 4 -> 3 ==> 342
# 5 -> 6 -> 4 ==> 465
# 342 + 465 = 807
# output: [7,0,8] (as a linked list)

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

def add_two_numbers(l1, l2)
    list_1 = build_linked_list(l1)
    list_2 = build_linked_list(l2)
    dummy_head = ListNode.new(0)
    curr = dummy_head
    carry = 0
    while list_1 != nil || list_2 != nil || carry != 0
        list_1 ? list_1_val = list_1.val : list_1_val = 0
        list_2 ? list_2_val = list_2.val : list_2_val = 0
        column_sum = list_1_val + list_2_val + carry
        carry = column_sum / 10
        new_node = ListNode.new(column_sum % 10)
        curr.next = new_node
        curr = new_node
        list_1 ? list_1 = list_1.next : list_1 = nil
        list_2 ? list_2 = list_2.next : list_2 = nil
    end
    return dummy_head.next

end

# test cases
l1 = [2,4,3]; l2 = [5,6,4]
puts "result: #{p add_two_numbers(l1, l2)}, expected: [7,0,8]"
puts "============="

l1 = [0]; l2 = [0]
puts "result: #{p add_two_numbers(l1, l2)}, expected: [0]"
puts "============="

l1 = [9,9,9,9,9,9,9]; l2 = [9,9,9,9]
puts "result: #{p add_two_numbers(l1, l2)}, expected: [8,9,9,9,0,0,0,1]"
puts "============="