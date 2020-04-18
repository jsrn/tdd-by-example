class Money
  def self.dollar(amount)
    Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    Franc.new(amount, 'CHF')
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

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  protected
  def amount
    @amount
  end
end
