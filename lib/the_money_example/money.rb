class Money
  def ==(object)
    amount == object.amount
  end

  protected
  def amount
    @amount
  end
end
