require_relative 'test_case.rb'

class WasRun < TestCase
  def initialize(method)
    super(method)
  end

  def set_up
    log_method_call(:set_up)
  end

  def test_method
    log_method_call(@name)
  end

  def test_broken_method
    raise StandardError.new, 'this is broken'
  end

  def tear_down
    log_method_call(:tear_down)
  end
end