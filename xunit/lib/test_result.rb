class TestResult
  def initialize
    @run_count = 0
    @failure_count = 0
  end

  def test_started
    @run_count += 1
  end

  def test_failed
    @failure_count += 1
  end

  def summary
    "#{@run_count} run, #{@failure_count} failed"
  end
end
