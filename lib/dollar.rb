class Dollar
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(object)
    amount == object.amount
  end

  protected
  def amount
    @amount
  end
end
