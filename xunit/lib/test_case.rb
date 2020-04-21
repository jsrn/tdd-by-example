class TestCase
  def initialize(name)
    @name = name
    set_up
  end

  def run
    send(@name)
  end

  def set_up; end

  def assert(condition)
    print condition ? '.' : 'x'
  end

  def refute(condition)
    print condition ? 'x' : '.'
  end
end
