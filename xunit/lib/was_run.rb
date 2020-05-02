require_relative 'test_case.rb'

class WasRun < TestCase
  def initialize(method)
    super(method)
  end

  def test_method
    log_method_call(@name)
  end

  def set_up
    log_method_call(:set_up)
  end

  def was_run?
    method_called?(@name)
  end

  def was_set_up?
    method_called?(:set_up)
  end
end