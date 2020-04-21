require_relative 'test_case.rb'

class WasRun < TestCase
  def initialize(method)
    super(method)
    @was_run = false
  end

  def test_method
    @was_run = true
  end

  def was_run?
    @was_run
  end
end