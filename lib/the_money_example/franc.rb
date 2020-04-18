require_relative 'money.rb'

class Franc < Money
  def currency
    'CHF'
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end
end
