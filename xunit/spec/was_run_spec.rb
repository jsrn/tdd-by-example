require './lib/was_run.rb'

class TestWasRun < WasRun
  def test_running
    our_test = WasRun.new(:test_method)
    refute our_test.was_run?
    our_test.run
    assert our_test.was_run?
  end

  def test_set_up
    our_test = WasRun.new(:test_method)
    assert our_test.was_set_up?
  end
end

TestWasRun.new(:test_running).run
TestWasRun.new(:test_set_up).run
puts ''