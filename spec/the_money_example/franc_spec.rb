require './lib/the_money_example/franc.rb'
require './lib/the_money_example/dollar.rb'

RSpec.describe Franc do
  describe '#times' do
    it 'updates the amount to 10 for 5 * 2' do
      five = Franc.new(5)
      expect(Franc.new(10)).to eq(five.times(2))
    end

    it 'returns multiple correct produts for the original object' do
      five = Franc.new(5)
      expect(Franc.new(10)).to eq(five.times(2))
      expect(Franc.new(15)).to eq(five.times(3))
    end
  end

  describe '#==' do
    it 'equals another note of the same denomination' do
      expect(Franc.new(5)).to eq(Franc.new(5))
      expect(Franc.new(5)).not_to eq(Franc.new(6))
    end

    it 'does not equal matching numbers of other currencies' do
      expect(Franc.new(5)).not_to eq(Dollar.new(5))
      expect(Franc.new(5)).not_to eq(Dollar.new(6))
    end
  end
end
