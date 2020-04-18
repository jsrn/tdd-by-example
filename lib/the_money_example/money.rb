class Money
  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

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
