require_relative 'test_result.rb'

class TestSuite
  def initialize
    @tests = []
  end

  def add(test)
    @tests << test
  end

  def run(results = TestResult.new)
    @tests.each do |test|
      test.run(results)
    end

    puts "\n\n"
    results
  end
end
