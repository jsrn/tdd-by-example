class SomeClass
  def write_to_log(logger, log_line)
    logger.add(log_line) 
  end
end

module Loggable
  attr_reader :lines

  def add(log_line)
    @lines ||= []
    @lines << log_line
  end
end

class Logger
  include Loggable  
end

RSpec.describe SomeClass do
  include Loggable

  it 'uses the self shunt pattern to make an object under test interact directly with the test class' do
    object_under_test = SomeClass.new
    object_under_test.write_to_log(self, 'this_is_a_test')
    expect(lines.include?('this_is_a_test')).to be true 
  end
end
