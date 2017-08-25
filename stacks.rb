require_relative 'node'

# class Stack
#   def initialize(max_size = nil)
#     @stack = Array.new
#     @max_size = max_size
#   end
#
#   def push(data)
#     @stack << item
#   end
#
#   def pop
#     @stack.pop
#   end
#
#   def peek
#
#   end
#
#   def size
#     @stack.size
#   end
#
#   private
#
#   def full?
#
#   end
#
#   def empty?
#     self.size == 0
#   end
# end


# Stack implementation using Linked Lists
class StackAsLinkedList
  def initialize
    @top = nil
  end

  def push(data)
    @top = Node.new(data, @top)
  end

  def pop
    raise "Stack is empty" if empty?
    data = @top.data
    @top = @top.next_node
    data
  end

  # The only necessary methods are push and pop. All of the following are convenience methods.

  def empty?
    @top.nil?
  end

  def peek
    @top.data
  end

  def height
    counter = 0
    current_node = @top
    while !current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end
end
