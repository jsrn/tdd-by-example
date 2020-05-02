class TestCase
  attr_reader :method_calls

  def initialize(name)
    @name = name
    @method_calls = []
  end

  def run
    set_up
    send(@name)
    tear_down
  end

  def set_up; end
  def tear_down; end

  def assert(condition)
    print condition ? '.' : 'x'
  end

  def refute(condition)
    print condition ? 'x' : '.'
  end

  def log_method_call(method_name)
    @method_calls << method_name
  end

  def method_called?(method_name)
    @method_calls.include?(method_name.to_sym)
  end
end
