require './lib/test_case.rb'
require './lib/was_run.rb'
require './lib/test_suite.rb'

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

  def test_broken_method
    broken_test = WasRun.new(:test_broken_method)
    result = broken_test.run
    assert result.summary == '1 run, 1 failed'
  end

  def test_test_suite
    results = TestResult.new

    suite = TestSuite.new
    suite.add(TestTestCase.new(:test_running))
    suite.add(TestTestCase.new(:test_set_up))
    suite.run(results)

    assert results.summary == '2 run, 0 failed'
  end
end

suite = TestSuite.new
suite.add(TestTestCase.new(:test_set_up))
suite.add(TestTestCase.new(:test_running))
suite.add(TestTestCase.new(:test_template_method))
suite.add(TestTestCase.new(:test_result))
suite.add(TestTestCase.new(:test_broken_method))
suite.add(TestTestCase.new(:test_test_suite))

result = TestResult.new
suite.run(result)
puts result.summary
