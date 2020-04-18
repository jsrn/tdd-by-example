require './lib/the_money_example/franc.rb'
require './lib/the_money_example/dollar.rb'

RSpec.describe Franc do
  describe '#times' do
    it 'updates the amount to 10 for 5 * 2' do
      five = Money.franc(5)
      expect(Money.franc(10)).to eq(five.times(2))
    end

    it 'returns multiple correct produts for the original object' do
      five = Money.franc(5)
      expect(Money.franc(10)).to eq(five.times(2))
      expect(Money.franc(15)).to eq(five.times(3))
    end
  end
end
