require 'bundler'
Bundler.setup

require 'sinatra'
require 'json'

$stdout.sync = true

class TravisWebhook < Sinatra::Base
  post '/' do
    raw_payload    = params[:payload]
    parsed_payload = JSON.parse(raw_payload)

    puts raw_payload
    puts parsed_payload
  end
end

