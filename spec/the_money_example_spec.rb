require './lib/dollar.rb'

RSpec.describe Dollar do
  describe '#times' do
    it 'returns 10 for 5 * 2' do
      dollar = Dollar.new(5)
      expect(dollar.times(2)).to eq(10)
    end
  end
end
