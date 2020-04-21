require './lib/was_run.rb'

class TestWasRun < WasRun
  def test_running
    our_test = WasRun.new(:test_method)
    assert !our_test.was_run?
    our_test.run
    assert our_test.was_run?
    puts ''
  end
end

test_was_run = TestWasRun.new(:test_running)
test_was_run.run
