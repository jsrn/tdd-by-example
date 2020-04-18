class Money
  def self.dollar(amount)
    Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    Franc.new(amount, 'CHF')
  end

  attr_reader :currency

  def initialize(amount)
    @amount = amount
  end

  def ==(object)
    self.class == object.class &&
      amount == object.amount
  end

  protected
  def amount
    @amount
  end
end
