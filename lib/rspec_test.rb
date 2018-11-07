require 'byebug'
class NumberService
  def number
    12
  end
end

class Describe
  attr_reader :context_name

  def initialize(context_name, &block)
    @context_name = context_name
    instance_eval &block
  end

  def it(context_name, &block)
    byebug
  end
end

def describe(context_name, &block)
  Describe.new(context_name, &block)
end

class Example
  attr_reader :context_name

  def initialize(context_name, &block)
    @context_name = context_name
    instance_eval &block
  end

  def expect(result)
    p "a"
    p self
  end

  def to(expectation)
    self
  end

  def eq(expectation)

  end
end

puts describe NumberService do
  describe '#number' do
    it 'returns 12' do
      expect(NumberService.new.number)
    end
  end
end
