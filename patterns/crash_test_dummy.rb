require 'net/http'

class MyApiClient
  def read_from_endpoint
    :some_good_stuff_returned_from_the_api
  end
end

# The class under test.
class ApiConsumer
  def pull_data
    response = MyApiClient.new.read_from_endpoint
  rescue Net::ReadTimeout
    response = :read_timeout_failure
  ensure
    response
  end
end

# We have some code that is supposed to handle errors raised by third party APIs,
# file systems, etc. These services are by their nature difficult to make fail in
# predictable ways (how do you cause an HTTP API to return a certain error, or
# cause a file-system error without doing serious damage, for example?)
#
# We can make a crash test dummy by mocking or stubbing the object that does the
# actual system interaction and forcing it to raise a certain exception. This allows
# us to test the error handling in our code without performing extreme acts.
RSpec.describe ApiConsumer do
  it 'handles read timeouts from the api' do
    expect_any_instance_of(MyApiClient).to receive(:read_from_endpoint).and_raise(Net::ReadTimeout)

    consumer = ApiConsumer.new
    expect(consumer.pull_data).to eq(:read_timeout_failure)
  end
end
