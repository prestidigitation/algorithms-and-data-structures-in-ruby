require_relative '../stacks.rb'

describe StackAsArray do
  let(:stack) { StackAsArray.new }

  describe '#push' do
    it 'raises error if stack is full' do
      stack = StackAsArray.new(25)
      25.times {stack.push('test')}
      expect{stack.push('test')}.to raise_error('Stack is full')
    end

    it 'updates top to pushed item when stack empty' do
      stack.push('testing123')
      expect(stack.pop).to eq 'testing123'
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

    it 'changes the height of the stack by 1' do
      expect{stack.push('test')}.to change{stack.height}.by(1)
    end
  end

  describe '#peek' do
    it 'returns the value of the top element of the stack' do
      stack.push('buckaw!')
      stack.push(false)
      stack.push(31)
      expect(stack.peek).to eq 31
    end

    it 'does not alter the height of the stack' do
      stack.push('buckaw!')
      stack.push(false)
      stack.push(31)
      expect{stack.peek}.to_not change{stack.height}
    end
  end

  describe '#height' do
    it 'returns the number of elements in the stack' do
      50.times { stack.push('test') }
      expect(stack.height).to eq 50
    end

    it 'does not alter the stack' do
      expect{stack.height}.to_not change{stack}
    end
  end

  describe '#empty?' do
    it 'returns true when the stack is empty' do
      expect(stack.send(:empty?)).to be true
    end

    it 'returns false when the stack is not empty' do
      stack.push(13)
      expect(stack.send(:empty?)).to be false
    end
  end

  describe '#full?' do
    it 'returns false when the stack is not full' do
      stack = StackAsArray.new(25)
      24.times { stack.push('test') }
      expect(stack.send(:full?)).to be false
    end

    it 'returns true when the stack is full' do
      stack = StackAsArray.new(25)
      25.times { stack.push('test') }
      expect(stack.send(:full?)).to be true
    end
  end
end


describe StackAsLinkedList do
  let(:stack) { StackAsLinkedList.new }

  describe '#push' do
    it 'raises error if stack is full' do
      stack = StackAsLinkedList.new(25)
      25.times {stack.push('test')}
      expect{stack.push('test')}.to raise_error('Stack is full')
    end

    it 'updates top to pushed item when stack empty' do
      stack.push('testing123')
      expect(stack.pop).to eq 'testing123'
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

    it 'changes the height of the stack by 1' do
      expect{stack.push('test')}.to change{stack.height}.by(1)
    end
  end

  describe '#peek' do
    it 'returns the value of the top element of the stack' do
      stack.push('buckaw!')
      stack.push(false)
      stack.push(31)
      expect(stack.peek).to eq 31
    end

    it 'does not alter the height of the stack' do
      stack.push('buckaw!')
      stack.push(false)
      stack.push(31)
      expect{stack.peek}.to_not change{stack.height}
    end
  end

  describe '#height' do
    it 'returns the number of elements in the stack' do
      50.times { stack.push('test') }
      expect(stack.height).to eq 50
    end

    it 'does not alter the stack' do
      expect{stack.height}.to_not change{stack}
    end
  end

  describe '#empty?' do
    it 'returns true when the stack is empty' do
      expect(stack.send(:empty?)).to be true
    end

    it 'returns false when the stack is not empty' do
      stack.push(13)
      expect(stack.send(:empty?)).to be false
    end
  end

  describe '#full?' do
    it 'returns false when the stack is not full' do
      stack = StackAsLinkedList.new(25)
      24.times { stack.push('test') }
      expect(stack.send(:full?)).to be false
    end

    it 'returns true when the stack is full' do
      stack = StackAsLinkedList.new(25)
      25.times { stack.push('test') }
      expect(stack.send(:full?)).to be true
    end
  end
end
