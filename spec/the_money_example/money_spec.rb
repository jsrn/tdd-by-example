require './lib/the_money_example/money.rb'

RSpec.describe Money do
  describe '.dollar' do
    it 'returns a dollar object' do
      expect(Money.dollar(5)).to be_a(Dollar)
    end
  end

  describe '.franc' do
    it 'returns a franc object' do
      expect(Money.franc(5)).to be_a(Franc)
    end
  end

  describe '#==' do
    it 'bills are matched based on value' do
      expect(Money.dollar(5)).to eq(Money.dollar(5))
      expect(Money.dollar(5)).not_to eq(Money.dollar(6))

      expect(Money.franc(5)).to eq(Money.franc(5))
      expect(Money.franc(5)).not_to eq(Money.franc(6))
    end

    it 'bills of different types do not match' do
      expect(Money.dollar(5)).not_to eq(Money.franc(5))
      expect(Money.dollar(5)).not_to eq(Money.franc(6))
    end
  end

  describe '#currency' do
    it 'is CHF for francs' do
      expect(Money.franc(100).currency).to eq('CHF')
    end

    it 'is USD for dollars' do
      expect(Money.dollar(100).currency).to eq('USD')
    end
  end
end