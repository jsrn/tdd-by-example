require_relative 'money.rb'

class Bank
  def reduce(expression, currency)
    Money.new(expression.augend.amount + expression.addend.amount, currency)
  end
end
