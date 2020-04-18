require './lib/dollar.rb'

RSpec.describe Dollar do
  describe '#amount' do
    it 'returns the amount stored on the currency object' do
      dollar = Dollar.new(5)
      expect(dollar.amount).to eq(5)
    end
  end

  describe '#times' do
    it 'returns 10 for 5 * 2' do
      dollar = Dollar.new(5)
      expect(dollar.times(2)).to eq(10)
    end
  end
end
