require './lib/was_run.rb'

RSpec.describe WasRun do
  it 'tells us whether a method was executed' do
    our_test = WasRun.new(:test_method)
    puts our_test.was_run?
    our_test.run
    puts our_test.was_run?
  end
end
