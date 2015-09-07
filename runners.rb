require_relative 'linked_list_node'
require_relative 'tortoise_hare'

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

TortoiseHare.new(node3).traverse_nodes


node1.next_node = node3
TortoiseHare.new(node3).traverse_nodes
