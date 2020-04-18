require './lib/dollar.rb'

RSpec.describe Dollar do
  describe '#amount' do
    it 'returns the amount stored on the currency object' do
      dollar = Dollar.new(5)
      expect(dollar.amount).to eq(5)
    end
  end

  describe '#times' do
    it 'updates the amount to 10 for 5 * 2' do
      dollar = Dollar.new(5)
      product = dollar.times(2)
      expect(product.amount).to eq(10)
    end

    it 'returns multiple correct produts for the original object' do
      dollar = Dollar.new(5)
      product = dollar.times(2)
      expect(product.amount).to eq(10)
      product = dollar.times(3)
      expect(product.amount).to eq(15)
    end
  end

  describe '#==' do
    it 'equals another bill of the same denomination' do
      expect(Dollar.new(5)).to eq(Dollar.new(5))
      expect(Dollar.new(5)).not_to eq(Dollar.new(6))
    end
  end
end
