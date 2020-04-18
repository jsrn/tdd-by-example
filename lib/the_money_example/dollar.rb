require_relative 'money.rb'

class Dollar < Money
  def times(multiplier)
    Money.dollar(amount * multiplier)
  end
end
