require './lib/test_case.rb'
require './lib/was_run.rb'

class TestTestCase < TestCase
  def set_up
    @test = WasRun.new(:test_method)
  end

  def test_running
    @test.run
    assert @test.method_calls.include?(:test_method)
  end

  def test_set_up
    @test.run
    assert @test.method_calls.include?(:set_up)
  end

  def test_template_method
    @test.run
    assert @test.method_calls == %i[set_up test_method tear_down]
  end

  def test_result
    result = @test.run
    assert result.summary == '1 run, 0 failed'
  end

  # def test_broken_method
  #   test = WasRun.new(:test_broken_method)
  #   result = test.run
  #   assert result.summary == '1 run, 1 failed'
  # end
end

TestTestCase.new(:test_running).run
TestTestCase.new(:test_set_up).run
TestTestCase.new(:test_template_method).run
TestTestCase.new(:test_result).run
# TestTestCase.new(:test_broken_method).run
puts ''