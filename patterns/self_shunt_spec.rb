# The class that we're trying to test. We want to ensure that when passed an
# object which adheres to the loggable interface, the `write_to_log` method
# adds a log line to the logger object.
class SomeClass
  def write_to_log(logger, log_line)
    logger.add(log_line) 
  end
end

# This defines the behaviour of the logger object, extracted to a module for
# convenience. In a real example, we might not be so lucky to have everything
# wrapped into a little bundle for us, but hey.
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

# In cases where we want to pass object A to object B, and test that object B
# performs certain operations on A, we might typically create a mock A that
# adheres to the interface that B is expecting. Using the self-shunt pattern, we
# can make our test class itself that object by defining or intheriting the
# behaviour of a typical A, and then passing the test itself to B.
RSpec.describe SomeClass do
  include Loggable

  it 'uses the self shunt pattern to make an object under test interact directly with the test class' do
    object_under_test = SomeClass.new
    object_under_test.write_to_log(self, 'this_is_a_test')
    expect(lines.include?('this_is_a_test')).to be true 
  end
end
