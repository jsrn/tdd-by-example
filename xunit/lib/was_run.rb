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

  def tear_down
    log_method_call(:tear_down)
  end
end