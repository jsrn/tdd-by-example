require_relative 'money.rb'

class Dollar < Money
  def currency
    'USD'
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end
end
