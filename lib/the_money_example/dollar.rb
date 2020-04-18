require_relative 'money.rb'

class Dollar < Money
  def initialize(amount, currency = nil)
    @currency = currency
    super(amount)
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end
end
