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

  def test_template_method
    @test.run
    assert @test.method_calls == %i[set_up test_method]
  end
end

TestTestCase.new(:test_running).run
TestTestCase.new(:test_set_up).run
TestTestCase.new(:test_template_method).run
puts ''