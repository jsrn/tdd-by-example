require_relative 'money.rb'

class Franc < Money
  def times(multiplier)
    Money.franc(amount * multiplier)
  end
end
