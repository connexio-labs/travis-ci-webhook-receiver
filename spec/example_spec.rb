ENV['RACK_ENV'] = 'test'

require_relative '../app.rb'

require 'rspec'
require 'rack/test'

describe TravisWebhook do
  include Rack::Test::Methods

  def app
    TravisWebhook
  end

  it 'responds ok' do
    post '/', { payload: "{\"id\":1,\"status\":\"foo\"}" }

    expect(last_response).to be_ok
  end
end
