require './lib/test_case.rb'
require './lib/was_run.rb'

class TestTestCase < TestCase
  def set_up
    @test = WasRun.new(:test_method)
  end

  def test_running
    @test.run
    assert @test.was_run?
  end

  def test_set_up
    @test.run
    assert @test.was_set_up?
  end
end

TestTestCase.new(:test_running).run
TestTestCase.new(:test_set_up).run
puts ''