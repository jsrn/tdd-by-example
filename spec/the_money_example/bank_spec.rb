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

    it 'reduces money to itself' do
      five = Money.dollar(5)
      bank = Bank.new
      expect(five).to eq(bank.reduce(five, 'USD'))
    end
  end
end
