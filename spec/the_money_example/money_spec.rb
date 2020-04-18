require './lib/the_money_example/money.rb'

RSpec.describe Money do
  describe '.dollar' do
    it 'returns a dollar object' do
      expect(Money.dollar(5)).to be_a(Money)
    end
  end

  describe '.franc' do
    it 'returns a franc object' do
      expect(Money.franc(5)).to be_a(Money)
    end
  end

  describe '#==' do
    it 'bills are matched based on value and currency' do
      expect(Money.dollar(5)).to eq(Money.dollar(5))
      expect(Money.dollar(5)).not_to eq(Money.franc(5))
      expect(Money.dollar(5)).not_to eq(Money.dollar(6))
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

  describe '#*' do
    it 'returns multiple correct products for the original object' do
      five = Money.franc(5)
      expect(Money.franc(10)).to eq(five * 2)
      expect(Money.franc(15)).to eq(five * 3)
    end
  end

  describe '#+' do
    it 'adds 5 + 5 to get 10' do
      expect(Money.dollar(5) + Money.dollar(5)).to eq(Money.dollar(10))
    end
  end
end
