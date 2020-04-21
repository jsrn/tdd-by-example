class WasRun
  def initialize(method)
    @method = method
    @was_run = false
  end

  def run
    send @method
  end

  def test_method
    @was_run = true
  end

  def was_run?
    @was_run
  end
end