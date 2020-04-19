require_relative 'money.rb'

class Bank
  def reduce(expression, currency)
    expression.reduce(currency)
  end
end
