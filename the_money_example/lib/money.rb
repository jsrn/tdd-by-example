require_relative './sum.rb'

class Money
  def self.dollar(amount)
    Money.new(amount, 'USD')
  end

  def self.franc(amount)
    Money.new(amount, 'CHF')
  end

  attr_reader :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(object)
    currency == object.currency &&
      amount == object.amount
  end

  def *(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def +(addition)
    Sum.new(self, addition)
  end

  def reduce(bank, currency)
    if self.currency == 'CHF' && currency == 'USD'
      Money.dollar(amount / 2)
    else
      self
    end
  end

  # protected
  def amount
    @amount
  end
end
