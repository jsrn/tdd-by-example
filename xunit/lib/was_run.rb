require_relative 'test_case.rb'

class WasRun < TestCase
  def initialize(method)
    super(method)
  end

  def test_method
    @was_run = true
  end

  def set_up
    @was_run = false
    @was_set_up = true
  end

  def was_run?
    @was_run
  end

  def was_set_up?
    @was_set_up
  end
end