require './lib/the_money_example/dollar.rb'
require './lib/the_money_example/franc.rb'

RSpec.describe Dollar do
  describe '#times' do
    it 'updates the amount to 10 for 5 * 2' do
      five = Money.dollar(5)
      expect(Money.dollar(10)).to eq(five.times(2))
    end

    it 'returns multiple correct produts for the original object' do
      five = Money.dollar(5)
      expect(Money.dollar(10)).to eq(five.times(2))
      expect(Money.dollar(15)).to eq(five.times(3))
    end
  end
end
