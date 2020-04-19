require './lib/the_money_example/bank.rb'

RSpec.describe Bank do
  describe '#reduce' do
    it 'reduces an expression to the correct total' do
      five = Money.dollar(5)
      sum = five + five

      bank = Bank.new
      reduced = bank.reduce(sum, 'USD')
      expect(Money.dollar(10)).to eq(reduced)
    end
  end
end
