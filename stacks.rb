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


class StackLL
  def initialize
    @top = nil
  end

  def push(data)
    @top = Node.new(data, @top)
  end

  def pop
    raise "Stack is empty" if is_empty?
    data = @top.data
    @top = @top.next_node
    data
  end

  def is_empty?
    @top.nil?
  end

  def peek
    @top.data
  end
end
