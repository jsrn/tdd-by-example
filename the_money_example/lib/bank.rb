require_relative 'money.rb'

class Bank
  def initialize
    @rates = {}
  end

  def reduce(expression, currency)
    expression.reduce(self, currency)
  end

  def add_rate(from, to, rate)
    @rates[from] ||= {}
    @rates[from][to] = rate
  end

  def rate(from, to)
    return 1 if from == to

    @rates[from] ||= {}
    @rates[from][to]
  end
end
