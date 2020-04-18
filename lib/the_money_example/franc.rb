require_relative 'money.rb'

class Franc < Money
  def times(multiplier)
    Franc.new(amount * multiplier)
  end
end
