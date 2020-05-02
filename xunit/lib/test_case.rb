require_relative 'test_result.rb'

class TestCase
  attr_reader :method_calls

  def initialize(name)
    @name = name
    @method_calls = []
  end

  def run(result = TestResult.new)
    result.test_started
    set_up

    begin
      send(@name)
    rescue StandardError => e
      puts "Exception raised in test: #{@name}"
      puts e.to_s
      result.test_failed
    end

    tear_down
    print '.'
    result
  end

  def set_up; end
  def tear_down; end

  def assert(condition)
    test_failed unless condition
  end

  def refute(condition)
    test_failed if condition
  end

  def log_method_call(method_name)
    @method_calls << method_name
  end

  def method_called?(method_name)
    @method_calls.include?(method_name.to_sym)
  end
end
