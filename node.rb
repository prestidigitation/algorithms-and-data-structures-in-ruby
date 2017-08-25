class Node
  attr_accessor :data, :next

  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end
end
