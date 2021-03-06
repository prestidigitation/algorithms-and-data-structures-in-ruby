require_relative 'node'


# Stack implementation using Array
class StackAsArray
  def initialize(max_size=nil)
    @stack = Array.new
    @max_size = max_size
  end

  def push(data)
    raise 'Stack is full' if full?
    @stack.push(data)
  end

  def pop
    raise 'Stack is empty' if empty?
    @stack.pop
  end

  def peek
    @stack[-1]
  end

  def height
    @stack.size
  end

  private

  def empty?
    height == 0
  end

  def full?
    height == @max_size
  end
end


# Stack implementation using Linked List
class StackAsLinkedList
  def initialize(max_size=nil)
    @top = nil
    @max_size = max_size
  end

  def push(data)
    raise 'Stack is full' if full?
    @top = Node.new(data, @top)
  end

  def pop
    raise 'Stack is empty' if empty?
    data = @top.data
    @top = @top.next_node
    data
  end

  # The only necessary methods are push and pop. All of the following are convenience methods.
  def peek
    @top.data
  end

  # height method iterates through all nodes when called, so takes O(n) time. Could alternatively have a counter variable that gets incremented or decremented when pushing or popping elements, so that checking height takes O(1) time.
  def height
    counter = 0
    current_node = @top
    while !current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  private
  
  def empty?
    @top.nil?
  end

  def full?
    height == @max_size
  end
end
