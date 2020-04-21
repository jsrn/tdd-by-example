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

    it 'reduces money of different currencies' do
      bank = Bank.new
      bank.add_rate('CHF', 'USD', 2)

      expect(bank.reduce(Money.franc(2), 'USD')).to eq(Money.dollar(1))
    end
  end

  describe '#rate' do
    it 'returns the correct currency conversions' do
      bank = Bank.new
      bank.add_rate('CHF', 'USD', 2)

      expect(bank.rate('CHF', 'USD')).to eq(2)
      expect(bank.rate('USD', 'USD')).to eq(1)
    end
  end
end
