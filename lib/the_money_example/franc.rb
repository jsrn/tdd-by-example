require_relative 'money.rb'

class Franc < Money
  def initialize(amount, currency = nil)
    @currency = currency
    super(amount)
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end
end
