require 'minitest/autorun'
require_relative 'tortoise_hare'
require_relative 'linked_list_node'

class TestRunners < Minitest::Test

	describe "Without loop" do
		def setup
			@node1 = LinkedListNode.new(37)
			@node2 = LinkedListNode.new(99, @node1)
			@node3 = LinkedListNode.new(12, @node2)
			@tortoise_hare = ::TortoiseHare.new(@node3)
		end

		def test_finite
			expected = p false; false
			actual = @tortoise_hare.traverse_nodes
			assert_equal expected, actual
		end
	end

	describe "With loop" do
		def setup
			@node1 = LinkedListNode.new(37)
			@node2 = LinkedListNode.new(99, @node1)
			@node3 = LinkedListNode.new(12, @node2)
			@node1.next_node = @node3
			@tortoise_hare = ::TortoiseHare.new(@node3)
		end

		def test_infinite
			expected = p true; true
			actual = @tortoise_hare.traverse_nodes
			assert_equal expected, actual
		end
	end
end
