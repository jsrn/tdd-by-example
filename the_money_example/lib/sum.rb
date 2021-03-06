class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, currency)
    reduced_augend = bank.reduce(augend, currency)
    reduced_addend = bank.reduce(addend, currency)
    Money.new(reduced_augend.amount + reduced_addend.amount, currency)
  end

  def +(addend)
    Sum.new(self, addend)
  end

  def *(multiplier)
    Sum.new(@augend * multiplier, @addend * multiplier)
  end
end
