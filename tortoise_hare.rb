class TortoiseHare
	attr_accessor :start, :fast, :slow

	def initialize(start)
		@start = start
		@fast = fast = start
		@slow = slow = start
	end

	def traverse_nodes
		(p false; return false) if fast.next_node.nil?
		moves
	end

	def moves
		if @fast.next_node != nil && @fast.next_node.next_node != nil
			@fast = @fast.next_node.next_node
			@slow = @slow.next_node
			nodes_equal
		end
	end

	def nodes_equal
		@fast == @slow ? (p true; return true) : (traverse_nodes)
	end
end
