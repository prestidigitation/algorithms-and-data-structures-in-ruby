require_relative '../stacks.rb'

describe StackLL do
  let(:stack) { StackLL.new }

  describe 'initialized in let(:stack)' do
    it 'is empty so #empty? returns true' do
      expect(stack.empty?).to be true
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
      expect(stack.pop).to eq 'thingee'
    end
  end

  describe '#pop' do
    it 'raises an error if the stack is empty' do
      expect{stack.pop}.to raise_error('Stack is empty')
    end

    it 'pops off the last value pushed to the stack' do
      stack.push('buckaw!')
      stack.push(false)
      stack.push(31)
      expect(stack.pop).to eq 31
    end
  end

  describe '#height' do
    it 'returns the number of elements in the stack' do
      50.times { stack.push('test') }
      expect(stack.height).to eq 50
    end
  end
end
