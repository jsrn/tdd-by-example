require './lib/the_money_example/dollar.rb'

RSpec.describe Dollar do
  describe '#times' do
    it 'updates the amount to 10 for 5 * 2' do
      five = Dollar.new(5)
      expect(Dollar.new(10)).to eq(five.times(2))
    end

    it 'returns multiple correct produts for the original object' do
      five = Dollar.new(5)
      expect(Dollar.new(10)).to eq(five.times(2))
      expect(Dollar.new(15)).to eq(five.times(3))
    end
  end

  describe '#==' do
    it 'equals another bill of the same denomination' do
      expect(Dollar.new(5)).to eq(Dollar.new(5))
      expect(Dollar.new(5)).not_to eq(Dollar.new(6))
    end
  end
end
