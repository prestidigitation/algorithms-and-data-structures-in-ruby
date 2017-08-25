require_relative '../stacks.rb'

describe StackLL do
  let(:stack) { StackLL.new }

  describe 'initialized in let(:stack)' do
    it 'is empty so #is_empty? returns true' do
      expect(stack.is_empty?).to be true
    end
  end

  describe '#push' do
    it 'updates top to pushed item when stack empty' do
      stack.push('testing123')
      expect(stack.peek).to eq 'testing123'
    end

    it 'updates top to latest pushed data' do
      stack.push('blah')
      stack.push(42)
      stack.push(false)
      stack.push('thingee')
      expect(stack.peek).to eq 'thingee'
    end
  end
end
