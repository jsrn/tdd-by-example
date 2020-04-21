class TestCase
  def initialize(name)
    @name = name
  end

  def run
    send(@name)
  end

  def assert(condition)
    print condition ? '.' : 'x'
  end
end
