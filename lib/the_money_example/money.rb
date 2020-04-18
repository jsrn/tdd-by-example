class Money
  def ==(object)
    self.class == object.class &&
      amount == object.amount
  end

  protected
  def amount
    @amount
  end
end
